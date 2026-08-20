-- Catalog batches of SKUs and the copy Grok writes for each one.
create table if not exists copy_batches (
  id serial primary key,
  user_id text not null,
  name text not null,
  tone text not null default 'editorial',
  length text not null default 'medium',
  extra_instructions text not null default '',
  created_at timestamptz not null default now()
);
create index if not exists copy_batches_user_id_idx on copy_batches (user_id);

create table if not exists copy_items (
  id serial primary key,
  batch_id integer not null references copy_batches (id) on delete cascade,
  user_id text not null,
  sku text not null,
  product_name text not null,
  brand text not null default '',
  category text not null default '',
  features text not null default '',
  keywords text not null default '',
  extra text not null default '',
  seo_title text not null default '',
  meta_description text not null default '',
  description text not null default '',
  bullets text not null default '',
  status text not null default 'pending',
  error text not null default '',
  sort_order integer not null default 0,
  created_at timestamptz not null default now()
);
create index if not exists copy_items_batch_id_idx on copy_items (batch_id);
create index if not exists copy_items_user_id_idx on copy_items (user_id);
