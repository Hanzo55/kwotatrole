<script type="text/x-handlebars" data-template-name="quotes">

	<section id="app">
		<header id="header">
			<h1>[Sic]tastic</h1>
			{{! <input type="text" id="new-todo" placeholder="Add a Quote" /> }}
		</header>

		<section id="main">
			<ul id="quote-list">
				{{#each controller itemController="quote"}}
				<li>
					<input type="radio" name="rating" value="c" class="citizen">
					<input type="radio" name="rating" value="t" class="troll">
					<label>"{{text}}"</label>
					<ul>
            <li><span id="quote-info">{{author}}</span></li>
          </ul>
          <span id="content-title">
            <a href="{{sourceUrl}}" target="_blank">{{sourceTitle}}</a>
          </span>
				</li>
				{{/each}}
			</ul>
		</section>





        <footer id="footer">
          <span id="todo-count">
            <strong>2</strong> quotes left
          </span>
          <ul id="filters">
            <li>
              <a href="all" class="selected">All</a>
            </li>
            <li>
              <a href="article">Articles</a>
            </li>
            <li>
              <a href="comment">Comments</a>
            </li>
          </ul>

          <button id="clear-completed">
            Clear completed (1)
          </button>
        </footer>
    </section>

    <footer id="info">
      <p>I like milk</p>
    </footer>

</script>