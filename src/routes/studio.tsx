import { createFileRoute } from "@tanstack/react-router";
import { RedirectToSignIn } from "@/lib/auth/gates";
import { useCurrentUserState } from "@/lib/auth/use-current-user";
import { StudioWorkspace } from "@/components/studio-workspace";
import { Skeleton } from "@/components/ui/skeleton";

export const Route = createFileRoute("/studio")({ component: StudioPage });

function StudioPage() {
  const { user, isPending } = useCurrentUserState();
  if (isPending) {
    return (
      <main className="mx-auto max-w-6xl px-4 py-16 sm:px-6">
        <Skeleton className="h-8 w-48" />
        <Skeleton className="mt-6 h-40 w-full rounded-xl" />
      </main>
    );
  }
  if (!user) return <RedirectToSignIn />;
  return <StudioWorkspace />;
}
