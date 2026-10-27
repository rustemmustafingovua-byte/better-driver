.class public final Lr9/f;
.super Lu8/a;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lr9/f;->l:I

    iput-object p2, p0, Lr9/f;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr9/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr9/f;->m:Ljava/lang/Object;

    check-cast p0, Lw0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lw0/b;->m:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lr9/f;->m:Ljava/lang/Object;

    check-cast p0, Lr9/g;

    iget-object p0, p0, Lr9/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)Lr9/d;
    .locals 2

    iget-object p0, p0, Lr9/f;->m:Ljava/lang/Object;

    check-cast p0, Lr9/g;

    iget-object p0, p0, Lr9/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-static {v0, v1}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v0

    iget v1, v0, Lo9/b;->l:I

    if-ltz v1, :cond_0

    new-instance v1, Lr9/d;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "group(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lr9/d;-><init>(Ljava/lang/String;Lo9/d;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lr9/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr9/f;->m:Ljava/lang/Object;

    check-cast p0, Lw0/b;

    invoke-virtual {p0, p1}, Lu8/f;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lr9/d;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    check-cast p1, Lr9/d;

    invoke-super {p0, p1}, Lu8/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lr9/f;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lu8/a;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6

    iget v0, p0, Lr9/f;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw0/i;

    iget-object p0, p0, Lr9/f;->m:Ljava/lang/Object;

    check-cast p0, Lw0/b;

    iget-object p0, p0, Lw0/b;->l:Lw0/j;

    const/16 v1, 0x8

    new-array v2, v1, [Lw0/k;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lw0/l;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lw0/l;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0, v2}, Lw0/c;-><init>(Lw0/j;[Lw0/k;)V

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lg5/f;->z(Ljava/util/Collection;)Lo9/d;

    move-result-object v0

    new-instance v1, Lf9/l;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lf9/l;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lr0/o1;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lq9/q;

    invoke-direct {p0, v1, v0}, Lq9/q;-><init>(Lq9/h;Li9/c;)V

    new-instance v0, Lq9/p;

    invoke-direct {v0, p0}, Lq9/p;-><init>(Lq9/q;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
