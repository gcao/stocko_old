# An in-memory Sqlite3 connection:
DataMapper.setup(:default, 'sqlite3::memory:')
# DataMapper.setup(:default, 'postgres://stocko@localhost/stocko_test')