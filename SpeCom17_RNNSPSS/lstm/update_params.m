
update_params_lstm

GdU = -lr*gU;
Gdbu = -lr*gbu;

GdU = GdU + mf*GpdU;
Gdbu = Gdbu + mf*Gpdbu;

GU = GU + GdU;
Gbu = Gbu + Gdbu;