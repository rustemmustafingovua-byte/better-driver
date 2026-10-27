.class public Ls6/o;
.super Ls6/n0;
.source "SourceFile"


# static fields
.field public static final o:Ls6/o;

.field public static final p:Ls6/o;


# instance fields
.field public final synthetic n:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ls6/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls6/o;-><init>(I)V

    sput-object v0, Ls6/o;->o:Ls6/o;

    new-instance v0, Ls6/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls6/o;-><init>(I)V

    sput-object v0, Ls6/o;->p:Ls6/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ls6/o;->n:I

    packed-switch p1, :pswitch_data_0

    .line 3
    :pswitch_0
    const-class p1, Ljava/lang/Object;

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    return-void

    .line 4
    :pswitch_1
    const-class p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    return-void

    .line 5
    :pswitch_2
    const-class p1, [C

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    return-void

    .line 6
    :pswitch_3
    const-class p1, [B

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    return-void

    .line 7
    :pswitch_4
    const-class p1, Lb6/s;

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(IILjava/lang/Class;)V
    .locals 0

    .line 1
    iput p2, p0, Ls6/o;->n:I

    invoke-direct {p0, p1, p3}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb6/l;)V
    .locals 1

    .line 2
    const/4 v0, 0x6

    iput v0, p0, Ls6/o;->n:I

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Lb6/l;)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 1

    iget v0, p0, Ls6/o;->n:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Ls6/n0;->acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    sget-object p0, Lm6/a;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Ls6/o;->n:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    check-cast p2, [C

    array-length p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_3
    check-cast p2, [B

    array-length p0, p2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_4
    check-cast p2, Lb6/s;

    instance-of p0, p2, Lb6/r;

    if-eqz p0, :cond_2

    check-cast p2, Lb6/r;

    invoke-virtual {p2}, Lb6/r;->isEmpty()Z

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget p0, p0, Ls6/o;->n:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p2, p1}, Ls5/g;->p0(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ls5/g;->R()V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ls5/g;->S(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, [C

    sget-object p0, Lb6/q0;->y:Lb6/q0;

    iget-object p3, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p3, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    array-length p0, p1

    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    array-length p0, p1

    :goto_0
    if-ge p3, p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Ls5/g;->s0([CII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ls5/g;->P()V

    goto :goto_1

    :cond_1
    array-length p0, p1

    invoke-virtual {p2, p1, p3, p0}, Ls5/g;->s0([CII)V

    :goto_1
    return-void

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->i0(Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p1, [B

    iget-object p0, p3, Lb6/r0;->o:Lb6/p0;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->s:Ls5/a;

    const/4 p3, 0x0

    array-length v0, p1

    invoke-virtual {p2, p0, p1, p3, v0}, Ls5/g;->J(Ls5/a;[BII)V

    return-void

    :pswitch_4
    check-cast p1, Lb6/s;

    invoke-interface {p1, p2, p3}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    return-void

    :pswitch_5
    invoke-virtual {p2}, Ls5/g;->U()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    iget v0, p0, Ls6/o;->n:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :pswitch_1
    sget-object p0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_2
    check-cast p1, [C

    sget-object p0, Lb6/q0;->y:Lb6/q0;

    iget-object p3, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p3, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    array-length v0, p1

    :goto_0
    if-ge p3, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v1}, Ls5/g;->s0([CII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    array-length v0, p1

    invoke-virtual {p2, p1, p3, v0}, Ls5/g;->s0([CII)V

    :cond_1
    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_3
    sget-object v0, Ls5/n;->z:Ls5/n;

    invoke-virtual {p4, p1, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Ls6/o;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_4
    check-cast p1, [B

    sget-object p0, Ls5/n;->z:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    iget-object p3, p3, Lb6/r0;->o:Lb6/p0;

    iget-object p3, p3, Ld6/m;->m:Ld6/a;

    iget-object p3, p3, Ld6/a;->s:Ls5/a;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p3, p1, v0, v1}, Ls5/g;->J(Ls5/a;[BII)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_5
    check-cast p1, Lb6/s;

    invoke-interface {p1, p2, p3, p4}, Lb6/s;->a(Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :pswitch_6
    invoke-virtual {p2}, Ls5/g;->U()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
