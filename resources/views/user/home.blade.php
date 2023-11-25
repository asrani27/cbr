@extends('layouts.app')
@push('css')
    
@endpush
@section('content')
<div class="row text-center"> 
    <h1><strong>TES KEPRIBADIAN</strong></h1>
    <div class="col-xs-12">
        <div class="box box-danger">
          <div class="box-header">
            <h3 class="box-title"><i class="fa fa-clipboard"></i> Data Pernyataan</h3>
  
            <div class="box-tools">
            </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <div class="form-group">
                <form method="post" action="/user/tes">
                @csrf
                <label for="inputEmail3" class="col-sm-1 control-label">Ciri Anda</label>
                <div class="col-sm-5">
                    <select name="ciri_id" class="form-control" required>
                        <option value="">-pilih-</option>    
                    @foreach ($ciri as $item)
                    <option value="{{$item->id}}">{{$item->nama}}</option>    
                    @endforeach
                    </select>
                </div>
                <div class="col-sm-5 text-left">
                    <button type="submit" class='btn btn-sm btn-block btn-danger'>TAMBAH</button>
                </div>
                </form>
            </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
        
      </div>
    
</div>

<div class="row">
    <div class="col-xs-12">
      <div class="box box-danger">
        <div class="box-header">
          <h3 class="box-title"><i class="fa fa-clipboard"></i> Ciri Saya</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
          <table class="table table-hover">
            <tbody>
            <tr>
              <th class="text-center">No</th>
              <th>Ciri</th>
              <th>Aksi</th>
            </tr>
            @foreach ($cirisaya as $key => $item)
            <tr>
                <td class="text-center">{{1 + $key}}</td>
                <td>{{$item->ciri->nama}}</td>
                <td><a href="/user/tes/delete/{{$item->id}}"
                    onclick="return confirm('Yakin ingin di hapus');"
                    class="btn btn-xs btn-flat  btn-danger"><i class="fa fa-trash"></i></a></td>
            </tr>
            @endforeach
            
          </tbody></table>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
</div>

<div class="row">
    <div class="col-xs-12">
      <div class="box box-danger">
        <div class="box-header">
          <h3 class="box-title"><i class="fa fa-clipboard"></i> HASIL TES </h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
            
          <a href="/user/hasil" class='btn btn-sm btn-block btn-danger'><i class="fa fa-refresh"></i> CHECK HASIL</a>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
</div>
@endsection
@push('js')


@endpush
