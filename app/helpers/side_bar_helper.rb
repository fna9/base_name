module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Сслыка без детей',
      :icon => 'list',
      :controller => :welcome, 
      :action => :index
    }
    result << {
      :name => 'Администрирование',
      :icon => 'users',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'file-text-o',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :users, :action => :new,
       :icon => 'user-plus'}
    ]} 
    result << {
      :name => 'Заголовок ссылок',
      :icon => 'search-plus',
      :children => [
      {:name => 'Ссылка ребёнок',
       :controller => :welcome, :action => :index,
       :icon => 'binoculars'},
      {:name => 'Ссылка ребёнок',
       :controller => :welcome, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]} 

    result << {
      :name => 'Учебные группы',
      :icon => 'search-plus',
      :children => [
      {:name => 'Учебная группа по плану',
       :controller => :groups, :action => :index,
       :icon => 'binoculars'},
      {:name => 'Все учебные группы',
       :controller => :groups, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]}

    result << {
      :name => 'Сообщества',
      :icon => 'search-plus',
      :children => [
      {:name => 'Учебная группа по плану',
       :controller => :groups, :action => :index,
       :icon => 'binoculars'},
      {:name => 'Все учебные группы',
       :controller => :groups, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]}


    result << {
      :name => 'Студенты',
      :icon => 'search-plus',
      :children => [
      {:name => 'Личная информация',
       :controller => :students, :action => :index,
       :icon => 'binoculars'},
      {:name => 'Список всех студентов',
       :controller => :students, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]}


    result << {
      :name => 'Сообщения',
      :icon => 'search-plus',
      :children => [
      {:name => 'Не прочитанные',
       :controller => :messages, :action => :index,
       :icon => 'binoculars'},
      {:name => 'Все разговоры',
       :controller => :talks, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]} 
    result
  end
  
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users'
      ctr.to_s == controller_name.to_s  
    else
      false
    end
  end
end
