class Node
    @types = {}

    @groups = [
        'coverage',
        'arguments',
        'references',
        'category',
        'namespace',
        'base',
        'subclass',
        'typedef',
        'class, classtemplate',
        'struct',
        'enum',
        'field, union',
        'variable',
        'constructor',
        'destructor',
        'method',
        'function',
        'report'
    ]

    constructor: (@node) ->
        if !@node
            return

        if @node.length == 0
            @node = null
            return

        @name = @node.attr('name')
        @id = @node.attr('id')
        @ref = @node.attr('ref')

        if @ref && !@id
            @id = @ref.replace('#', '+')

        @brief = node.children('brief').first()
        @doc = node.children('doc').first()

    sidebar_name: ->
        @name

    @render_container: ->
        $('<div/>', {'class': @title[1].toLowerCase()})

    render: (container) ->
        null

# vi:ts=4:et
