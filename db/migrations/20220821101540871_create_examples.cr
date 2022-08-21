class CreateExamples < Jennifer::Migration::Base
  def up
    create_table :examples do |t|
      t.jsonb :random, {:null => false}

      t.timestamps
    end
  end

  def down
    drop_table :examples if table_exists? :examples
  end
end
