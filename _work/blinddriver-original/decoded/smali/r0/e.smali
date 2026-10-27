.class public final Lr0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/g;
.implements Lr0/m2;


# static fields
.field public static final m:Lc2/c0;

.field public static final synthetic n:Lr0/e;

.field public static final o:Lr0/e;

.field public static final p:Lr0/e;

.field public static final q:Lr0/e;

.field public static final r:Lr0/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/c0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    sput-object v0, Lr0/e;->m:Lc2/c0;

    new-instance v0, Lr0/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr0/e;-><init>(I)V

    sput-object v0, Lr0/e;->n:Lr0/e;

    new-instance v0, Lr0/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lr0/e;-><init>(I)V

    sput-object v0, Lr0/e;->o:Lr0/e;

    new-instance v0, Lr0/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lr0/e;-><init>(I)V

    sput-object v0, Lr0/e;->p:Lr0/e;

    new-instance v0, Lr0/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lr0/e;-><init>(I)V

    sput-object v0, Lr0/e;->q:Lr0/e;

    new-instance v0, Lr0/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lr0/e;-><init>(I)V

    sput-object v0, Lr0/e;->r:Lr0/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr0/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Lr0/e;)V
    .locals 9

    sget-object v0, Lr0/u1;->z:Lx9/l0;

    :cond_0
    sget-object v0, Lr0/u1;->z:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu0/e;

    move-object v2, v1

    check-cast v2, Lx0/b;

    iget-object v3, v2, Lx0/b;->n:Lw0/b;

    invoke-virtual {v3, p0}, Lw0/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx0/a;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v5, v4, Lx0/a;->a:Ljava/lang/Object;

    iget-object v4, v4, Lx0/a;->b:Ljava/lang/Object;

    iget-object v6, v3, Lw0/b;->l:Lw0/j;

    const/4 v7, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_0

    :cond_2
    move v8, v7

    :goto_0
    invoke-virtual {v6, v8, v7, p0}, Lw0/j;->v(IILjava/lang/Object;)Lw0/j;

    move-result-object v7

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    sget-object v3, Lw0/b;->n:Lw0/b;

    goto :goto_1

    :cond_4
    new-instance v6, Lw0/b;

    iget v3, v3, Lw0/b;->m:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v6, v7, v3}, Lw0/b;-><init>(Lw0/j;I)V

    move-object v3, v6

    :goto_1
    sget-object v6, Ly0/b;->a:Ly0/b;

    if-eq v5, v6, :cond_5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v7, Lx0/a;

    new-instance v8, Lx0/a;

    iget-object v7, v7, Lx0/a;->a:Ljava/lang/Object;

    invoke-direct {v8, v7, v4}, Lx0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v8}, Lw0/b;->b(Ljava/lang/Object;Lx0/a;)Lw0/b;

    move-result-object v3

    :cond_5
    if-eq v4, v6, :cond_6

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v7, Lx0/a;

    new-instance v8, Lx0/a;

    iget-object v7, v7, Lx0/a;->b:Ljava/lang/Object;

    invoke-direct {v8, v5, v7}, Lx0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v8}, Lw0/b;->b(Ljava/lang/Object;Lx0/a;)Lw0/b;

    move-result-object v3

    :cond_6
    if-eq v5, v6, :cond_7

    iget-object v7, v2, Lx0/b;->l:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object v7, v4

    :goto_2
    if-eq v4, v6, :cond_8

    iget-object v5, v2, Lx0/b;->m:Ljava/lang/Object;

    :cond_8
    new-instance v2, Lx0/b;

    invoke-direct {v2, v7, v5, v3}, Lx0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw0/b;)V

    :goto_3
    if-eq v1, v2, :cond_9

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lr0/e;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lr0/e;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "Empty"

    return-object p0

    :pswitch_2
    const-string p0, "StructuralEqualityPolicy"

    return-object p0

    :pswitch_3
    const-string p0, "ReferentialEqualityPolicy"

    return-object p0

    :pswitch_4
    const-string p0, "NeverEqualPolicy"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
