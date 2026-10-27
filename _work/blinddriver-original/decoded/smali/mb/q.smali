.class public Lmb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/l7;
.implements Lmb/n7;
.implements Lmb/u7;
.implements Lmb/m7;
.implements Lf7/j;
.implements Lpb/l;
.implements Lnc/a;
.implements Lla/h0;
.implements Lq4/a;
.implements Lt2/o;


# static fields
.field public static final synthetic m:Lmb/q;

.field public static final synthetic n:Lmb/q;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/q;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lmb/q;->m:Lmb/q;

    new-instance v0, Lmb/q;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lmb/q;->n:Lmb/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lmb/q;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p0, Lk/s;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lk/s;-><init>(I)V

    .line 5
    sget-object p0, Lk/t0;->a:[J

    .line 6
    new-instance p0, Lk/m0;

    invoke-direct {p0}, Lk/m0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmb/q;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lmb/q;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "protocols"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lla/w;

    sget-object v3, Lla/w;->n:Lla/w;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lla/w;

    iget-object v3, v3, Lla/w;->l:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static e(Ljava/util/List;)[B
    .locals 5

    const-string v0, "protocols"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbb/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lmb/q;->d(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lbb/g;->X(I)V

    invoke-virtual {v0, v3}, Lbb/g;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lbb/g;->m:J

    invoke-virtual {v0, v1, v2}, Lbb/g;->G(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lt2/k;I)Landroid/graphics/Typeface;
    .locals 2

    if-nez p2, :cond_1

    sget-object v0, Lt2/k;->n:Lt2/k;

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_0
    iget p1, p1, Lt2/k;->l:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-static {p0, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static h(FFFF)Landroid/graphics/Path;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A0(Lmb/p0;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic C0(Lmb/s1;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic F0(Lmb/i2;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public I(Lmb/t4;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lmb/a7;->m:Ljava/util/logging/Logger;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public K0(Lmb/h0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public L0(Lmb/u3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lmb/u3;->z()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public P0(Lmb/z4;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lmb/a7;->m:Ljava/util/logging/Logger;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public W(Lmb/z0;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lmb/a7;->m:Ljava/util/logging/Logger;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Lpb/i;)V
    .locals 0

    const/4 p0, 0x0

    iput-object p0, p1, Lpb/i;->l:Lpb/h;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget p0, p0, Lmb/q;->l:I

    const/16 v0, 0xc

    const/16 v1, 0x54

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "set_mock_mode_with_callback"

    const/4 v6, 0x0

    const-string v7, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    check-cast p2, Lu7/d;

    check-cast p1, Lp7/d;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->k()[Ld7/c;

    move-result-object p0

    if-eqz p0, :cond_3

    move v8, v6

    :goto_0
    array-length v9, p0

    if-ge v8, v9, :cond_1

    aget-object v9, p0, v8

    iget-object v10, v9, Ld7/c;->l:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v4, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ld7/c;->a()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-ltz p0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lp7/e;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lp7/c;

    invoke-direct {v0, p1, p2}, Lp7/c;-><init>(Ljava/lang/Boolean;Lu7/d;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget p2, Lp7/b;->a:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, v1}, Lp7/e;->a(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lp7/e;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lp7/b;->a:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, v0}, Lp7/e;->a(Landroid/os/Parcel;I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p2, Lu7/d;->a:Lu7/i;

    invoke-virtual {p1, p0}, Lu7/i;->d(Ljava/lang/Object;)V

    :goto_3
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->k()[Ld7/c;

    move-result-object p0

    const/4 v8, 0x1

    if-eqz p0, :cond_7

    :goto_4
    array-length v9, p0

    if-ge v6, v9, :cond_5

    aget-object v9, p0, v6

    iget-object v10, v9, Ld7/c;->l:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    move-object v9, v4

    :goto_5
    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v9}, Ld7/c;->a()J

    move-result-wide v5

    cmp-long p0, v5, v2

    if-ltz p0, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lp7/e;

    new-instance p1, Lp7/c;

    invoke-direct {p1, v4, p2}, Lp7/c;-><init>(Ljava/lang/Boolean;Lu7/d;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v0, Lp7/b;->a:I

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p0, p2, v1}, Lp7/e;->a(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lp7/e;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lp7/b;->a:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, v0}, Lp7/e;->a(Landroid/os/Parcel;I)V

    iget-object p0, p2, Lu7/d;->a:Lu7/i;

    invoke-virtual {p0, v4}, Lu7/i;->d(Ljava/lang/Object;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lf8/v3;)Lq4/b;
    .locals 6

    new-instance v0, Lr4/g;

    iget-object p0, p1, Lf8/v3;->n:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object p0, p1, Lf8/v3;->o:Ljava/lang/Comparable;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    iget-object p0, p1, Lf8/v3;->p:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Ld1/c0;

    iget-boolean v4, p1, Lf8/v3;->l:Z

    iget-boolean v5, p1, Lf8/v3;->m:Z

    invoke-direct/range {v0 .. v5}, Lr4/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ld1/c0;ZZ)V

    return-object v0
.end method

.method public b0(Lmb/j0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lnc/b;
    .locals 0

    sget-object p0, Lpc/b;->l:Lpc/b;

    return-object p0
.end method

.method public g(Lpb/a;)Ltb/d;
    .locals 1

    new-instance p0, Ltb/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltb/d;-><init>(Lpb/a;Lg5/m;)V

    return-object p0
.end method

.method public bridge synthetic m(Lmb/h5;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public m0(Lmb/c5;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lmb/a7;->m:Ljava/util/logging/Logger;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public n0(Lmb/u0;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p1, Lmb/u0;->f:Lmb/y4;

    iget-object p1, p1, Lmb/u0;->g:Lmb/y4;

    const/4 v0, 0x2

    new-array v0, v0, [Lmb/x0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lmb/a7;->a([Lmb/x0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public o(Lmb/g0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public o0(Lmb/i0;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public p(Lmb/v4;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lmb/a7;->m:Ljava/util/logging/Logger;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public q0(Lmb/s4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p1, Lmb/s4;->f:Lmb/y4;

    invoke-static {p0}, Lmb/a7;->L1(Lmb/x0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic t0(Lmb/j2;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmb/q;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CONSTANT_VALUE_UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "NOT_CONSTANT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic z(Lmb/h3;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
