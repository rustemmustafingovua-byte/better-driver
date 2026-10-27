.class public final Lgd/c;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lgd/c;->l:I

    iput-object p1, p0, Lgd/c;->m:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lgd/c;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lgd/c;

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    check-cast p0, Lzc/l;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lgd/c;

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lgd/c;

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/i;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lgd/c;

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    check-cast p0, Lod/c0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lgd/c;

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    check-cast p0, Lm0/u;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lgd/c;

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    check-cast p0, Lgd/d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgd/c;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lgd/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lgd/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lgd/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lgd/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lgd/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lgd/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lgd/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lgd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lgd/c;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lgd/c;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lzc/p;->a:Lr9/i;

    check-cast p0, Lzc/l;

    check-cast p0, Lzc/o;

    iget-object p0, p0, Lzc/o;->a:Ljava/lang/String;

    new-instance p1, Lla/u;

    invoke-direct {p1}, Lla/u;-><init>()V

    iput-boolean v3, p1, Lla/u;->i:Z

    iput-boolean v3, p1, Lla/u;->j:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lma/e;->b(J)I

    move-result v0

    iput v0, p1, Lla/u;->x:I

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lla/u;->a(J)V

    new-instance v0, Lla/v;

    invoke-direct {v0, p1}, Lla/v;-><init>(Lla/u;)V

    new-instance p1, Lr0/o1;

    const/16 v1, 0xf

    invoke-direct {p1, v1, v0}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    move v0, v3

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_9

    invoke-virtual {p1, p0}, Lr0/o1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzc/j;

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v6, v5, Lzc/j;->b:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget v7, v5, Lzc/j;->a:I

    const/16 v8, 0x12c

    if-gt v8, v7, :cond_8

    const/16 v8, 0x190

    if-ge v7, v8, :cond_8

    const-string v5, "http"

    invoke-static {v6, v5, v4}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v6

    goto :goto_3

    :cond_1
    const-string v5, "//"

    invoke-static {v6, v5, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "https:"

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    const-string v5, "/"

    invoke-static {v6, v5, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v1, Lr9/j;->l:[Lr9/j;

    const/16 v1, 0x42

    const-string v5, "^[a-z]+://[^/]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v5, "compile(...)"

    invoke-static {v1, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v5, "matcher(...)"

    invoke-static {v1, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p0}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lr9/g;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    const/16 v7, 0x2f

    invoke-static {p0, v7, v3, v1}, Lr9/k;->i0(Ljava/lang/String;CII)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "substring(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    invoke-static {p0, v5, v6}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lzc/p;->m(Ljava/lang/String;)Lzc/m;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    invoke-static {p0}, Lzc/p;->c(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Lzc/i;

    invoke-static {p0}, Lzc/p;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lzc/i;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p1, v5, Lzc/j;->c:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lzc/p;->a(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v2, Lzc/i;

    invoke-static {p0}, Lzc/p;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Lzc/i;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-object v2

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p1

    iget-object p1, p1, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {p1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/Tuning;

    iget p1, p1, Lua/nav/Tuning;->T:I

    if-lez p1, :cond_a

    new-instance v0, Ljava/io/File;

    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v2, "logs"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Led/i;->a:Lr9/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object p0

    iget-object p0, p0, Ldd/q0;->d:Ljava/io/File;

    invoke-static {v0, v2, v3, p0}, Led/i;->d(Ljava/io/File;JLjava/io/File;)Lt8/j;

    move-result-object p0

    iget-object v0, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    if-lez v0, :cond_a

    const/16 p0, 0x400

    int-to-long v4, p0

    div-long/2addr v2, v4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "logs pruned: "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " files, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " KB older than "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavCore"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v1

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object p1

    invoke-virtual {p1}, Lfd/o;->h()Z

    move-result p1

    if-eqz p1, :cond_b

    check-cast p0, Lua/nav/routing/i;

    invoke-virtual {p0}, Lua/nav/routing/i;->c()V

    :cond_b
    return-object v1

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast p0, Lod/c0;

    iget-object p1, p0, Lod/c0;->a:Lua/nav/routing/Route;

    iget-object p1, p1, Lua/nav/routing/Route;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lod/c0;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lod/c0;->a()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_d

    new-instance v2, Lo9/d;

    iget-object v5, p0, Lod/c0;->d:[I

    aget v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    aget v5, v5, v7

    invoke-direct {v2, v6, v5, v4}, Lo9/b;-><init>(III)V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    move-object v6, v2

    check-cast v6, Lo9/c;

    invoke-virtual {v6}, Lo9/c;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Lo9/c;->nextInt()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/routing/GeoPoint;

    iget-wide v8, v8, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iget-wide v10, v6, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v8, v9, v10, v11}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-static {v5}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v2

    const-string v5, "i"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_5

    :cond_d
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    const-string p1, "fromFeatures(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast p0, Lm0/u;

    iget-object p1, p0, Lm0/u;->b:Landroid/content/Context;

    iget-object v0, p0, Lm0/u;->c:Lm0/y;

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_f

    if-ne v0, v4, :cond_e

    const-string v0, "textview"

    goto :goto_7

    :cond_e
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_f
    const-string v0, "edittext"

    :goto_7
    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p1

    iput-object p1, p0, Lm0/u;->f:Landroid/view/textclassifier/TextClassifier;

    return-object p1

    :pswitch_4
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v5, p0

    check-cast v5, Lgd/d;

    invoke-virtual {v5}, Lgd/d;->a()Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_10
    :try_start_0
    const-string v6, "DELETE"

    const-string v7, "/v1/me"

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lgd/d;->e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;

    move-result-object p0

    iget-object p0, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_11

    goto :goto_8

    :cond_11
    move v4, v3

    :goto_8
    if-eqz v4, :cond_12

    iget-object p0, v5, Lgd/d;->b:Ljd/b;

    const-string p1, "log_secret"

    invoke-virtual {p0, p1}, Ljd/b;->f(Ljava/lang/String;)V

    iget-object p0, v5, Lgd/d;->d:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    move v3, v4

    :catch_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_9
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
