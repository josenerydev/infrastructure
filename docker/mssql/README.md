<!-- Add this code to the beginning of your Markdown file -->
<script>
function copyCode(elementId) {
  const code = document.getElementById(elementId);
  const textArea = document.createElement('textarea');
  textArea.value = code.textContent;
  document.body.appendChild(textArea);
  textArea.select();
  document.execCommand('copy');
  textArea.remove();
  alert('Code copied to clipboard');
}
</script>

# SalesAndInventory.Migrations

<!-- First code block -->
<pre id="code1">
docker-compose down
</pre>
<button onclick="copyCode('code1')">Copy Code</button>

<!-- Second code block -->
<pre id="code2">
docker-compose build --no-cache
docker-compose build --no-cache mssql
docker-compose up mssql

</pre>
<button onclick="copyCode('code2')">Copy Code</button>

<!-- Third code block -->
<pre id="code3">
docker-compose up -d
</pre>
<button onclick="copyCode('code3')">Copy Code</button>

C:\repos\labs\infrastructure\docker\mssql
|-- docker-compose.yml
|-- setup
|   |-- wait-for-it.sh
|   |-- entrypoint.sh
|   |-- setup.sh
|   |-- create_database.sql
|   |-- mssql.Dockerfile
|-- db
    |-- migrations


