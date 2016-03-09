module SideBarHelper
  def side_bar_items(ru)
    result = []
   # result << {
   #  :name => 'Сслыка без детей',
   #   :icon => 'list',
   #   :controller => :welcome, 
   #   :action => :index
   # }
   # result << {
   #   :name => 'Администрирование',
   #   :icon => 'users',
   #   :children => [
   #   {:name => 'Пользователи',
   #   :controller => :users, :action => :index,
   #    :icon => 'file-text-o',
   #    :class => 'long'},
   #   {:name => 'Добавление',
   #   :controller => :users, :action => :new,
   #    :icon => 'user-plus'}
   #  ]} 
   #  result << {
   #    :name => 'Заголовок ссылок',
   #    :icon => 'search-plus',
   #    :children => [
   #    {:name => 'Ссылка ребёнок',
   #     :controller => :welcome, :action => :index,
   #     :icon => 'binoculars'},
   #   {:name => 'Ссылка ребёнок',
   #    :controller => :welcome, :action => :index,
   #    :icon => 'search',
   #    :class => 'long'}
   # ]} 

    result << {
      :name => 'Учебные группы',
      :icon => 'sitemap',
      :children => [
      {:name => 'Учебная группа по плану',
       :controller => :groups, :action => :index,
       :icon => 'file-text-o'},
      {:name => 'Все учебные группы',
       :controller => :groups, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]}

    result << {
      :name => 'Сообщества',
      :icon => 'university',
      :children => [
      {:name => 'Ваши сообщества',
       :controller => :groups, :action => :index,
       :icon => 'file-text-o'},
      {:name => 'Все сообщества',
       :controller => :groups, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]}


    result << {
      :name => 'Студенты',
      :icon => 'users',
      :children => [
      {:name => 'Личная информация',
       :controller => :students, :action => :index,
       :icon => 'user'},
      {:name => 'Список всех студентов',
       :controller => :students, :action => :index,
       :icon => 'search',
       :class => 'long'}
    ]}


    result << {
      :name => 'Сообщения',
      :icon => 'comment',
      :children => [
      {:name => 'Не прочитанные',
       :controller => :messages, :action => :index,
       :icon => 'envelope'},
      {:name => 'Все разговоры',
       :controller => :talks, :action => :index,
       :icon => 'comments',
       :class =>'long'}
    ]} 

    result << {
      :name => 'Преподаватели',
      :icon => 'mortar-board',
      :controller => :teachers,
      :action => :index
    }

    result << {
      :name => 'Настройки',
      :icon => 'cogs',
      :controller => :welcome, 
      :action => :index
    }

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
