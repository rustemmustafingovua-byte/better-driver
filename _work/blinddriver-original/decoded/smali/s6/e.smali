.class public final Ls6/e;
.super Ls6/o0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final synthetic o:I

.field public final p:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Ls6/e;->o:I

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-class p1, Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    iput-boolean p2, p0, Ls6/e;->p:Z

    return-void

    :pswitch_0
    const-class p1, Ljava/net/InetAddress;

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    iput-boolean p2, p0, Ls6/e;->p:Z

    return-void

    :pswitch_1
    if-eqz p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-class p1, Ljava/lang/Boolean;

    :goto_1
    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    iput-boolean p2, p0, Ls6/e;->p:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 1

    iget v0, p0, Ls6/e;->o:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Ls6/o0;->acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 1

    iget v0, p0, Ls6/e;->o:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    invoke-virtual {p1}, Lr5/p;->a()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lr5/p;->r:Lr5/p;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Ls6/e;->p:Z

    if-eq p1, p2, :cond_2

    new-instance p0, Ls6/e;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls6/e;-><init>(IZ)V

    :cond_2
    return-object p0

    :pswitch_0
    iget-object v0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    invoke-virtual {p1}, Lr5/p;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p1, Ls6/e;

    iget-boolean p0, p0, Ls6/e;->p:Z

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Ls6/e;-><init>(IZ)V

    move-object p0, p1

    goto :goto_1

    :cond_3
    sget-object p2, Lr5/p;->p:Lr5/p;

    if-ne p1, p2, :cond_4

    new-instance p0, Ls6/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Ls6/p;-><init>(ILjava/lang/Class;)V

    :cond_4
    :goto_1
    return-object p0

    :pswitch_1
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    invoke-virtual {p1}, Lr5/p;->a()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ls6/e;

    iget-boolean p0, p0, Ls6/e;->p:Z

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Ls6/e;-><init>(IZ)V

    move-object p0, p1

    :cond_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Ljava/net/InetAddress;Ls5/g;)V
    .locals 1

    iget-boolean p0, p0, Ls6/e;->p:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-virtual {p2, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    iget p3, p0, Ls6/e;->o:I

    packed-switch p3, :pswitch_data_0

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Ls6/e;->j(Ljava/net/InetAddress;Ls5/g;)V

    return-void

    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->K(Z)V

    return-void

    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ls5/g;->X(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    iget p3, p0, Ls6/e;->o:I

    packed-switch p3, :pswitch_data_0

    check-cast p1, Ljava/net/InetAddress;

    sget-object p3, Ls5/n;->A:Ls5/n;

    invoke-virtual {p4, p1, p3}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p3

    const-class v0, Ljava/net/InetAddress;

    iput-object v0, p3, Lcom/fasterxml/jackson/core/type/b;->b:Ljava/lang/Class;

    invoke-virtual {p4, p2, p3}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Ls6/e;->j(Ljava/net/InetAddress;Ls5/g;)V

    invoke-virtual {p4, p2, p3}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->K(Z)V

    return-void

    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->K(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
