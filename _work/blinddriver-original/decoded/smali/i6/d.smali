.class public final Li6/d;
.super Ls6/o0;
.source "SourceFile"


# instance fields
.field public final synthetic o:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Li6/d;->o:I

    packed-switch p1, :pswitch_data_0

    const-class p1, Ljava/nio/file/Path;

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_0
    const-class p1, Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_1
    const-class p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_2
    const-class p1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_3
    const-class p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Ls6/o0;-><init>(Ljava/lang/Class;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Ljava/net/InetSocketAddress;Ls5/g;)V
    .locals 4

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    if-nez v2, :cond_2

    instance-of v0, v0, Ljava/net/Inet6Address;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 1

    iget v0, p0, Li6/d;->o:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Ls6/o0;->acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Li6/d;->o:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget p0, p0, Li6/d;->o:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-static {p1, p2}, Li6/d;->j(Ljava/net/InetSocketAddress;Ls5/g;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ls5/b;->a:Ls5/a;

    invoke-virtual {p2, p0, p3, v0, p1}, Ls5/g;->J(Ls5/a;[BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lbb/f;

    invoke-direct {p1, p0}, Lbb/f;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Ls5/b;->a:Ls5/a;

    invoke-virtual {p2, p3, p1, p0}, Ls5/g;->C(Ls5/a;Lbb/f;I)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void

    :pswitch_3
    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    iget v0, p0, Li6/d;->o:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Ls6/o0;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/util/TimeZone;

    sget-object p0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    const-class p3, Ljava/util/TimeZone;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/type/b;->b:Ljava/lang/Class;

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ls5/g;->q0(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/net/InetSocketAddress;

    sget-object p0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    const-class p3, Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/type/b;->b:Ljava/lang/Class;

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-static {p1, p2}, Li6/d;->j(Ljava/net/InetSocketAddress;Ls5/g;)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_4
    check-cast p1, Ljava/nio/file/Path;

    sget-object p0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    const-class p3, Ljava/nio/file/Path;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/type/b;->b:Ljava/lang/Class;

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-interface {p1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ls5/g;->q0(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
