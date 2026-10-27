.class public final Lad/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    iput v0, p0, Lad/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lad/m0;->a:I

    iput-object p2, p0, Lad/m0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lad/m0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/m0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, Lad/m0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lad/m0;

    invoke-virtual {p0, p1, p2}, Lad/m0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lua/nav/geo/PackInfo;

    iget-object p0, p1, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    check-cast p2, Lua/nav/geo/PackInfo;

    iget-object p1, p2, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Ll9/a;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    check-cast p2, Lua/nav/geo/PackInfo;

    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lr0/r2;

    invoke-static {p0, p2}, Lod/v6;->w(Lr0/r2;Lua/nav/geo/PackInfo;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p1, Lua/nav/geo/PackInfo;

    invoke-static {p0, p1}, Lod/v6;->w(Lr0/r2;Lua/nav/geo/PackInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lpb/a;

    check-cast p2, Lpb/a;

    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lpb/a;

    invoke-static {p0, p1, p2}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v2, p1, Lpb/a;->m:D

    iget-wide v4, p2, Lpb/a;->m:D

    cmpl-double p0, v2, v4

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    cmpg-double p0, v2, v4

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    iget-wide p0, p1, Lpb/a;->l:D

    iget-wide v2, p2, Lpb/a;->l:D

    cmpl-double p2, p0, v2

    if-lez p2, :cond_5

    goto :goto_2

    :cond_5
    cmpg-double p0, p0, v2

    if-gez p0, :cond_6

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_2
    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lad/m0;

    invoke-virtual {p0, p1, p2}, Lad/m0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    check-cast p1, Lm2/p;

    iget p0, p1, Lm2/p;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Lm2/p;

    iget p1, p2, Lm2/p;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_3
    return p0

    :pswitch_3
    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    check-cast p1, Lm2/p;

    iget-object p0, p1, Lm2/p;->c:Le2/g0;

    check-cast p2, Lm2/p;

    iget-object p1, p2, Lm2/p;->c:Le2/g0;

    sget-object p2, Le2/g0;->f0:Lcom/graphhopper/isochrone/algorithm/b;

    invoke-virtual {p2, p0, p1}, Lcom/graphhopper/isochrone/algorithm/b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_4
    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lk/z;

    invoke-virtual {p0, v0, v1}, Lk/z;->c(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lk/z;->c(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lid/l0;

    iget-object v0, p0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lid/j0;

    iget-wide v0, p2, Lid/j0;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lid/l0;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lid/j0;

    iget-wide p0, p0, Lid/j0;->e:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_6
    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lbd/d;

    invoke-virtual {p0, p1, p2}, Lbd/d;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_9
    check-cast p1, Lhd/a;

    iget-object p0, p1, Lhd/a;->a:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lhd/a;

    iget-object p2, p2, Lhd/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_5
    return p0

    :pswitch_7
    check-cast p1, Lua/nav/routing/Route;

    iget-object p0, p0, Lad/m0;->b:Ljava/lang/Object;

    check-cast p0, Lad/o0;

    sget-object v0, Lad/n0;->a:Lad/n0;

    invoke-virtual {v0, p1, p0}, Lad/n0;->a(Lua/nav/routing/Route;Lad/o0;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lua/nav/routing/Route;

    invoke-virtual {v0, p2, p0}, Lad/n0;->a(Lua/nav/routing/Route;Lad/o0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
