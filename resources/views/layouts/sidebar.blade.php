
<section class="sidebar">
    <!-- Sidebar Menu -->
    <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MENU UTAMA</li>
    
        
    @if (Auth::user()->hasRole('superadmin'))
        
    <li class="{{ (request()->is('superadmin')) ? 'active' : '' }}"><a href="/superadmin"><i class="fa fa-home"></i> <span><i>Beranda</i></span></a></li>
    <li class="header">DATA UTAMA</li>
    <li class="{{ (request()->is('superadmin/user*')) ? 'active' : '' }}"><a href="/superadmin/user"><i class="fa fa-users"></i> <span><i>Data User</i></span></a></li>
    <li class="{{ (request()->is('superadmin/kepribadian*')) ? 'active' : '' }}"><a href="/superadmin/kepribadian"><i class="fa fa-user"></i> <span><i>Data Kepribadian</i></span></a></li>
    <li class="{{ (request()->is('superadmin/ciri*')) ? 'active' : '' }}"><a href="/superadmin/ciri"><i class="fa fa-user"></i> <span><i>Data Ciri Kepribadian</i></span></a></li>
    <li class="header">DATA KASUS</li>
    <li class="{{ (request()->is('superadmin/kasus*')) ? 'active' : '' }}"><a href="/superadmin/kasus"><i class="fa fa-th"></i> <span><i>Data Kasus Kepribadian</i></span></a></li>
    @else
        
    <li class="{{ (request()->is('user')) ? 'active' : '' }}"><a href="/user"><i class="fa fa-home"></i> <span><i>Tes Kepribadian</i></span></a></li>
    @endif
    
    
    
    <li><a href="/logout"><i class="fa fa-sign-out"></i> <span><i>Logout</i></span></a></li>
 
    
    </ul>
    <!-- /.sidebar-menu -->
</section>