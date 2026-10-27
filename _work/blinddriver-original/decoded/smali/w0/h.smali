.class public final Lw0/h;
.super Lu8/i;
.source "SourceFile"

# interfaces
.implements Lu0/b;


# instance fields
.field public final synthetic l:I

.field public final m:Lw0/b;


# direct methods
.method public synthetic constructor <init>(Lw0/b;I)V
    .locals 0

    iput p2, p0, Lw0/h;->l:I

    iput-object p1, p0, Lw0/h;->m:Lw0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lw0/h;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lw0/h;->m:Lw0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lw0/b;->m:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lw0/h;->m:Lw0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lw0/b;->m:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lw0/h;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lw0/h;->m:Lw0/b;

    invoke-virtual {p0, p1}, Lw0/b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lw0/h;->m:Lw0/b;

    invoke-virtual {p0, v0}, Lw0/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6

    iget v0, p0, Lw0/h;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw0/i;

    iget-object p0, p0, Lw0/h;->m:Lw0/b;

    iget-object p0, p0, Lw0/b;->l:Lw0/j;

    const/16 v1, 0x8

    new-array v2, v1, [Lw0/k;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lw0/l;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lw0/l;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0, v2}, Lw0/c;-><init>(Lw0/j;[Lw0/k;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lw0/i;

    iget-object p0, p0, Lw0/h;->m:Lw0/b;

    iget-object p0, p0, Lw0/b;->l:Lw0/j;

    const/16 v1, 0x8

    new-array v2, v1, [Lw0/k;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    new-instance v4, Lw0/l;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lw0/l;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {v0, p0, v2}, Lw0/c;-><init>(Lw0/j;[Lw0/k;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
