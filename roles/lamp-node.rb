# name - this must match the name of this .rb file
name "lamp-node"

# override_attributes - list all override attributes

override_attributes(
    "mysql" => {
        "server_root_password" => 'lampnodpass',
        "server_repl_password" => 'lampnodepass',
        "server_debian_password" => 'lampnodepass'
    }
)

# run_list - list all recipes that belong to this role

run_list(
    "recipe[apt]",
    "recipe[openssl]",
    "recipe[apache2]",
    "recipe[apache2::mod_php5]",
    "recipe[mysql::client]",
    "recipe[mysql::server]",
    "recipe[php]",
    "recipe[php::module_mysql]",
    "recipe[php::module_gd]",
    "recipe[php::module_curl]",
    "recipe[apt_packages]"
)

