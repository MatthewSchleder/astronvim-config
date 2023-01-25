# AstroNvim User Configurations

My current user configurations that are applied for AstroNvim.

## Additional Plugins

- [Vim-Doge](https://github.sas.com/kkoomen/vim-doge): DocString Generator
- [Org-mode](https://github.com/nvim-orgmode/orgmode): OrgMode Clone
- [Trouble](https://github.com/folke/trouble.nvim): List diagnostics problems
- [Doom-One](https://github.com/NTBBloodbath/doom-one.nvim): Really Nice Theme



## Supporting Language Servers (LSP)

Supporting languages are managed by AstroNvim by configuring the ensure_installed.  This uses the Mason to install the appropriate tools
for the language.  My local platform is using python 3.11.1, as well as the the latest stable Rust.

| Language | LSP           | Formatter     | Diagnostics    | Debugger (DAP)|
|--------- | ------------- | ------------- | -------------- | --------------|
| Python   | pyright       | black, isort  | flake8, pylint | debugpy       |
| Rust     | rust-analyzer | rustfmt       | clippy         | codelldb      |
| yaml     | yamlls        |               |                |               |

## Treesitter (TS) Languages

AstroNvim supports ensuring the appropriate configurations are installed.

<table>
<thead>
  <tr>
    <td colspan="5" style="text-align: center;" >Languages</td>
  </tr>
</thead>
<tbody>
  <tr><td>awk</td><td>bash</td><td>cmake</td><td>dockerfile</td><td>dot</td></tr>
  <tr><td>git</td><td>graphql</td><td>help</td><td>html</td><td>http</td></tr>
  <tr><td>jq</td><td>json</td><td>lua</td><td>make</td><td>markdown</td></tr>
  <tr><td>norg</td><td>python</td><td>regex</td><td>rust</td><td>terraform</td></tr>
  <tr><td>toml</td><td>typescript</td><td>yaml</td><td></td><td></td></tr>
</tbody>
</table>

