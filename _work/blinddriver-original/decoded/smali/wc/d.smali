.class public final Lwc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lwc/c;


# instance fields
.field public final a:Lg5/m;

.field public final b:Lad/r2;

.field public final c:Lp/a1;

.field public final d:Lp/a1;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwc/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwc/d;->Companion:Lwc/c;

    return-void
.end method

.method public constructor <init>(Lg5/m;Lad/r2;Lp/a1;Lp/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc/d;->a:Lg5/m;

    iput-object p2, p0, Lwc/d;->b:Lad/r2;

    iput-object p3, p0, Lwc/d;->c:Lp/a1;

    iput-object p4, p0, Lwc/d;->d:Lp/a1;

    const/4 p1, 0x0

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lwc/d;->e:Lx9/l0;

    iput-object p1, p0, Lwc/d;->f:Lx9/l0;

    return-void
.end method

.method public static a(DD)D
    .locals 0

    sub-double/2addr p0, p2

    const-wide p2, 0x4080e00000000000L    # 540.0

    add-double/2addr p0, p2

    const-wide p2, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, p2

    const-wide p2, 0x4066800000000000L    # 180.0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final b(Lua/nav/routing/Route;)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "route"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    sget-object v0, Lu8/r;->l:Lu8/r;

    return-object v0

    :cond_0
    move-object v2, v1

    new-instance v1, Lad/x1;

    invoke-direct {v1, v0}, Lad/x1;-><init>(Lua/nav/routing/Route;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x4056800000000000L    # 90.0

    const-wide v5, -0x3fa9800000000000L    # -90.0

    const-wide v7, 0x4066800000000000L    # 180.0

    const-wide v9, -0x3f99800000000000L    # -180.0

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    :goto_0
    move-wide/from16 v18, v9

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v4, v3, Lua/nav/routing/GeoPoint;->a:D

    cmpg-double v6, v4, v12

    if-gez v6, :cond_2

    move-wide v12, v4

    :cond_2
    cmpl-double v6, v4, v14

    if-lez v6, :cond_3

    move-wide v14, v4

    :cond_3
    iget-wide v9, v3, Lua/nav/routing/GeoPoint;->b:D

    cmpg-double v3, v9, v16

    if-gez v3, :cond_4

    move-wide/from16 v16, v9

    :cond_4
    cmpl-double v3, v9, v18

    if-lez v3, :cond_1

    goto :goto_0

    :cond_5
    move-object/from16 v3, p0

    iget-object v2, v3, Lwc/d;->a:Lg5/m;

    iget-object v2, v2, Lg5/m;->o:Ljava/lang/Object;

    check-cast v2, Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/cameras/SpeedCamera;

    iget-wide v3, v2, Lua/nav/cameras/SpeedCamera;->b:D

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double v7, v12, v5

    cmpg-double v7, v3, v7

    if-ltz v7, :cond_7

    add-double/2addr v5, v14

    cmpl-double v5, v3, v5

    if-gtz v5, :cond_7

    iget-wide v5, v2, Lua/nav/cameras/SpeedCamera;->c:D

    const-wide v7, 0x3f589374bc6a7efaL    # 0.0015

    sub-double v9, v16, v7

    cmpg-double v9, v5, v9

    if-ltz v9, :cond_7

    add-double v7, v18, v7

    cmpl-double v7, v5, v7

    if-lez v7, :cond_6

    goto :goto_1

    :cond_6
    move-object v7, v2

    new-instance v2, Lua/nav/routing/GeoPoint;

    invoke-direct {v2, v3, v4, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v3

    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v5

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object/from16 v21, v7

    const-wide/16 v7, 0x0

    move-object/from16 v0, v21

    invoke-static/range {v1 .. v10}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v2

    iget-wide v3, v2, Lad/w1;->a:D

    iget-wide v5, v2, Lad/w1;->b:D

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    cmpl-double v2, v5, v7

    if-gtz v2, :cond_7

    iget-object v2, v0, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v1, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v5

    iget v5, v5, Lad/v1;->b:F

    float-to-double v5, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Lwc/d;->a(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v2, v5, v7

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    move-object/from16 v0, p1

    goto :goto_1

    :cond_8
    :goto_3
    new-instance v2, Lwc/e;

    invoke-direct {v2, v0, v3, v4}, Lwc/e;-><init>(Lua/nav/cameras/SpeedCamera;D)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    new-instance v0, Lbd/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lbd/d;-><init>(I)V

    invoke-static {v11, v0}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    return-object v11
.end method

.method public final c(Lwc/b;)V
    .locals 13

    iget-object v0, p0, Lwc/d;->d:Lp/a1;

    invoke-virtual {v0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lwc/d;->e:Lx9/l0;

    invoke-virtual {p0, v1}, Lx9/l0;->j(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lwc/d;->c:Lp/a1;

    invoke-virtual {v0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/Tuning;

    if-eqz p1, :cond_1

    iget-wide v2, p1, Lwc/b;->b:D

    iget-wide v4, v0, Lua/nav/Tuning;->M:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iget-object v1, p0, Lwc/d;->e:Lx9/l0;

    invoke-virtual {v1, p1}, Lx9/l0;->j(Ljava/lang/Object;)V

    if-nez p1, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v1, p1, Lwc/b;->a:Lua/nav/cameras/SpeedCamera;

    iget-object v1, v1, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    iget-wide v2, p1, Lwc/b;->b:D

    iget-wide v4, v0, Lua/nav/Tuning;->N:D

    cmpg-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-gtz v2, :cond_13

    iget-object v2, p0, Lwc/d;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iput-object v1, p0, Lwc/d;->g:Ljava/lang/String;

    iget-object v2, p1, Lwc/b;->a:Lua/nav/cameras/SpeedCamera;

    iget-object v2, v2, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v6, Lcd/d;->J1:Lcd/c;

    sget-object v7, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcd/a;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    int-to-double v7, v2

    const-wide v9, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double/2addr v7, v9

    const/4 v2, 0x5

    int-to-double v9, v2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ll9/a;->y(D)I

    move-result v7

    mul-int/2addr v7, v2

    if-ge v7, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v7

    :cond_4
    :goto_1
    invoke-static {}, Lcd/a;->b()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_5
    invoke-static {}, Lcd/a;->a()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " miles per hour"

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " kilometers per hour"

    goto :goto_2

    :cond_7
    sget-object v7, Lad/k2;->a:Ljava/util/List;

    if-ltz v2, :cond_e

    const/16 v7, 0x3e7

    if-le v2, v7, :cond_8

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    const-string v2, "\u043d\u0443\u043b\u044c"

    goto :goto_5

    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    div-int/lit8 v8, v2, 0x64

    rem-int/lit8 v2, v2, 0x64

    if-lez v8, :cond_a

    sget-object v9, Lad/k2;->d:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v8, 0xa

    if-gt v8, v2, :cond_b

    const/16 v9, 0x14

    if-ge v2, v9, :cond_b

    sget-object v9, Lad/k2;->b:Ljava/util/List;

    sub-int/2addr v2, v8

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    div-int/lit8 v9, v2, 0xa

    if-lt v9, v5, :cond_c

    sget-object v10, Lad/k2;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    rem-int/2addr v2, v8

    if-lez v2, :cond_d

    sget-object v8, Lad/k2;->a:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    const/4 v11, 0x0

    const/16 v12, 0x3e

    const-string v8, " "

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_e
    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v7, "\u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 "

    invoke-static {v7, v2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    const-string v2, ""

    :goto_7
    sget-object v6, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v6

    const/16 v7, 0x32

    if-eqz v6, :cond_11

    sget-object v6, Lcd/j;->a:Lcd/j;

    iget-wide v8, p1, Lwc/b;->b:D

    int-to-double v10, v7

    div-double/2addr v8, v10

    double-to-int v8, v8

    mul-int/2addr v8, v7

    if-ge v8, v7, :cond_10

    goto :goto_8

    :cond_10
    move v7, v8

    :goto_8
    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lcd/j;->c(D)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_11
    iget-wide v8, p1, Lwc/b;->b:D

    int-to-double v10, v7

    div-double/2addr v8, v10

    double-to-int v6, v8

    mul-int/2addr v6, v7

    if-ge v6, v7, :cond_12

    goto :goto_9

    :cond_12
    move v7, v6

    :goto_9
    const-string v6, "\u0447\u0435\u0440\u0435\u0437 "

    const-string v8, " \u043c\u0435\u0442\u0440\u0456\u0432"

    invoke-static {v7, v6, v8}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_a
    iget-object v7, p0, Lwc/d;->b:Lad/r2;

    sget-object v8, Lcd/d;->I1:Lcd/c;

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v3, v5}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p1, Lwc/b;->b:D

    iget-wide v10, v0, Lua/nav/Tuning;->O:D

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_16

    iget-object v0, p1, Lwc/b;->a:Lua/nav/cameras/SpeedCamera;

    iget-object v0, v0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p1, Lwc/b;->c:F

    int-to-float v0, v0

    iget p1, p1, Lwc/b;->d:F

    add-float/2addr v0, p1

    cmpl-float p1, v2, v0

    if-lez p1, :cond_16

    iget-object p1, p0, Lwc/d;->h:Ljava/lang/String;

    invoke-static {p1, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-wide v8, p0, Lwc/d;->i:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0xfa0

    cmp-long p1, v8, v10

    if-lez p1, :cond_16

    :cond_14
    iput-object v1, p0, Lwc/d;->h:Ljava/lang/String;

    iput-wide v6, p0, Lwc/d;->i:J

    iget-object p0, p0, Lwc/d;->b:Lad/r2;

    iget-object p1, p0, Lad/r2;->d:Lad/u2;

    sget-object v0, Lad/u2;->n:Lad/u2;

    if-eq p1, v0, :cond_16

    iget-boolean p1, p0, Lad/r2;->h:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lad/r2;->p:Landroid/media/AudioManager;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    if-eq p1, v5, :cond_16

    if-eq p1, v4, :cond_16

    if-ne p1, v3, :cond_15

    goto :goto_b

    :cond_15
    iget-object p0, p0, Lad/r2;->v:Landroid/media/ToneGenerator;

    if-eqz p0, :cond_16

    const/16 p1, 0x1c

    const/16 v0, 0x190

    invoke-virtual {p0, p1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    :cond_16
    :goto_b
    return-void
.end method
