.class public final Le6/u;
.super Le6/w;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final t:I

.field public final u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/e;Lj6/h;Lb6/l;Lb6/n;Lp6/m;I)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Le6/u;->s:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v7}, Le6/w;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V

    .line 5
    iput-object p5, v1, Le6/u;->u:Ljava/lang/Object;

    .line 6
    iput p6, v1, Le6/u;->t:I

    return-void
.end method

.method public constructor <init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;Le6/c0;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le6/u;->s:I

    .line 1
    invoke-direct/range {p0 .. p6}, Le6/w;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V

    .line 2
    const-string p1, "ValueInstantiator for MapParameterAnyProperty cannot be `null`"

    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p7, p0, Le6/u;->u:Ljava/lang/Object;

    .line 3
    iput p8, p0, Le6/u;->t:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Le6/u;->s:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p1, Lp6/v;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lb6/q;

    if-nez p3, :cond_0

    iget-object p0, p1, Lp6/f;->l:Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lp6/t;->l:Lp6/t;

    :cond_0
    invoke-virtual {p1, p2, p3}, Lp6/v;->I(Ljava/lang/String;Lb6/q;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le6/u;->s:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le6/u;->u:Ljava/lang/Object;

    check-cast p0, Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp6/v;

    invoke-direct {v0, p0}, Lp6/v;-><init>(Lp6/m;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le6/u;->s:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le6/w;->p:Lb6/n;

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Le6/u;->s:I

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Le6/u;->t:I

    return p0

    :pswitch_0
    iget p0, p0, Le6/u;->t:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lb6/n;)Le6/w;
    .locals 10

    iget v0, p0, Le6/u;->s:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Le6/u;

    iget-object v0, p0, Le6/u;->u:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Le6/c0;

    iget v9, p0, Le6/u;->t:I

    iget-object v2, p0, Le6/w;->l:Lb6/e;

    iget-object v3, p0, Le6/w;->m:Lj6/h;

    iget-object v4, p0, Le6/w;->o:Lb6/l;

    iget-object v5, p0, Le6/w;->r:Lb6/w;

    iget-object v7, p0, Le6/w;->q:Ln6/d;

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Le6/u;-><init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;Le6/c0;I)V

    return-object v1

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-class p1, Le6/u;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot call withValueDeserializer() on "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
