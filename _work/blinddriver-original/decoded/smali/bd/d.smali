.class public final Lbd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbd/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget p0, p0, Lbd/d;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lzb/a;

    invoke-interface {p1}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb/h;

    iget-wide v0, p0, Lpb/h;->n:D

    iget-wide p0, p0, Lpb/h;->o:D

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    check-cast p2, Lzb/a;

    invoke-interface {p2}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpb/h;

    iget-wide v2, p2, Lpb/h;->n:D

    iget-wide v4, p2, Lpb/h;->o:D

    add-double/2addr v2, v4

    div-double/2addr v2, p0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lzb/a;

    invoke-interface {p1}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb/h;

    iget-wide v0, p0, Lpb/h;->l:D

    iget-wide p0, p0, Lpb/h;->m:D

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    check-cast p2, Lzb/a;

    invoke-interface {p2}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpb/h;

    iget-wide v2, p2, Lpb/h;->l:D

    iget-wide v4, p2, Lpb/h;->m:D

    add-double/2addr v2, v4

    div-double/2addr v2, p0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    cmpg-double p0, v0, v2

    if-gez p0, :cond_3

    const/4 p0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    check-cast p1, Lyb/c;

    check-cast p2, Lyb/c;

    iget-wide v0, p1, Lyb/c;->a:D

    iget-wide p0, p1, Lyb/c;->b:D

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    iget-wide v2, p2, Lyb/c;->a:D

    iget-wide v4, p2, Lyb/c;->b:D

    add-double/2addr v2, v4

    div-double/2addr v2, p0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_2

    :cond_4
    cmpl-double p0, v0, v2

    if-lez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lwc/e;

    iget-wide p0, p1, Lwc/e;->b:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p2, Lwc/e;

    iget-wide p1, p2, Lwc/e;->b:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lua/nav/support/DevMessage;

    iget-wide p0, p1, Lua/nav/support/DevMessage;->c:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Lua/nav/support/DevMessage;

    iget-wide p1, p2, Lua/nav/support/DevMessage;->c:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ll9/a;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Lua/nav/routing/SavedAddress;

    iget-wide v0, p2, Lua/nav/routing/SavedAddress;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lua/nav/routing/SavedAddress;

    iget-wide p1, p1, Lua/nav/routing/SavedAddress;->a:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lt8/j;

    iget-object p0, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    check-cast p2, Lt8/j;

    iget-object p1, p2, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1}, Ll9/a;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lid/j0;

    iget-wide p0, p1, Lid/j0;->e:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p2, Lid/j0;

    iget-wide p1, p2, Lid/j0;->e:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1}, Ll9/a;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p2, Lhd/a;

    sget-object p0, Lhd/e;->Companion:Lhd/c;

    iget-object p2, p2, Lhd/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lhd/c;->a(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lhd/a;

    iget-object p1, p1, Lhd/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lhd/c;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lgc/b;

    check-cast p2, Lgc/b;

    iget-object p0, p1, Lgc/b;->q:Lpb/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgc/b;->b(I)Lpb/a;

    move-result-object p1

    invoke-virtual {p2, v0}, Lgc/b;->b(I)Lpb/a;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lg5/f;->p(Lpb/a;Lpb/a;Lpb/a;)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Ll9/a;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Lbd/c;

    iget-wide p0, p1, Lbd/c;->b:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    check-cast p2, Lbd/c;

    iget-wide p1, p2, Lbd/c;->b:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
