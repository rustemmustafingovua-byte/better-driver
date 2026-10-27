.class public final Ldadb/AdbMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arg0:I

.field private final arg1:I

.field private final checksum:I

.field private final command:I

.field private final magic:I

.field private final payload:[B

.field private final payloadLength:I


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldadb/AdbMessage;->command:I

    iput p2, p0, Ldadb/AdbMessage;->arg0:I

    iput p3, p0, Ldadb/AdbMessage;->arg1:I

    iput p4, p0, Ldadb/AdbMessage;->payloadLength:I

    iput p5, p0, Ldadb/AdbMessage;->checksum:I

    iput p6, p0, Ldadb/AdbMessage;->magic:I

    iput-object p7, p0, Ldadb/AdbMessage;->payload:[B

    return-void
.end method

.method private final argStr(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final commandStr()Ljava/lang/String;
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->command:I

    sparse-switch p0, :sswitch_data_0

    const-string p0, "????"

    return-object p0

    :sswitch_0
    const-string p0, "OKAY"

    return-object p0

    :sswitch_1
    const-string p0, "CNXN"

    return-object p0

    :sswitch_2
    const-string p0, "OPEN"

    return-object p0

    :sswitch_3
    const-string p0, "AUTH"

    return-object p0

    :sswitch_4
    const-string p0, "WRTE"

    return-object p0

    :sswitch_5
    const-string p0, "CLSE"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_5
        0x45545257 -> :sswitch_4
        0x48545541 -> :sswitch_3
        0x4e45504f -> :sswitch_2
        0x4e584e43 -> :sswitch_1
        0x59414b4f -> :sswitch_0
    .end sparse-switch
.end method

.method private final getSource()Lbb/i;
    .locals 3

    new-instance v0, Lbb/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ldadb/AdbMessage;->payload:[B

    const/4 v2, 0x0

    iget p0, p0, Ldadb/AdbMessage;->payloadLength:I

    invoke-virtual {v0, v1, v2, p0}, Lbb/g;->write([BII)V

    return-object v0
.end method

.method private final payloadStr()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ldadb/AdbMessage;->payloadLength:I

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget v1, p0, Ldadb/AdbMessage;->command:I

    const v2, 0x45545257

    if-eq v1, v2, :cond_4

    const v2, 0x48545541

    const-string v3, "]"

    if-eq v1, v2, :cond_2

    const v2, 0x4e45504f    # 8.2759366E8f

    if-eq v1, v2, :cond_1

    const-string p0, "payload["

    invoke-static {v0, p0, v3}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Ldadb/AdbMessage;->payload:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_2
    iget v1, p0, Ldadb/AdbMessage;->arg0:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Ldadb/AdbMessage;->payload:[B

    sget-object v1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3
    const-string p0, "auth["

    invoke-static {v0, p0, v3}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-direct {p0}, Ldadb/AdbMessage;->writePayloadStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final shellPayloadStr()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Ldadb/AdbMessage;->getSource()Lbb/i;

    move-result-object v0

    invoke-interface {v0}, Lbb/i;->a()Lbb/g;

    move-result-object v1

    iget-wide v1, v1, Lbb/g;->m:J

    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lbb/i;->readByte()B

    move-result v1

    if-ltz v1, :cond_4

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lbb/i;->F()I

    move-result v3

    invoke-interface {v0}, Lbb/i;->a()Lbb/g;

    move-result-object v4

    iget-wide v4, v4, Lbb/g;->m:J

    long-to-int v4, v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lbb/i;->readByte()B

    move-result p0

    const-string v0, "[shell] exit("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ldadb/AdbMessage;->payload:[B

    iget p0, p0, Ldadb/AdbMessage;->payloadLength:I

    const/4 v2, 0x5

    sub-int/2addr p0, v2

    sget-object v3, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p0, "[shell] "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final syncPayloadStr()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Ldadb/AdbMessage;->getSource()Lbb/i;

    move-result-object p0

    invoke-interface {p0}, Lbb/i;->a()Lbb/g;

    move-result-object v0

    iget-wide v0, v0, Lbb/g;->m:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x4

    invoke-interface {p0, v1, v2, v0}, Lbb/i;->I(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ldadb/AdbSyncKt;->getSYNC_IDS()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lbb/i;->F()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[sync] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final writePayloadStr()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Ldadb/AdbMessage;->shellPayloadStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Ldadb/AdbMessage;->syncPayloadStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget p0, p0, Ldadb/AdbMessage;->payloadLength:I

    const-string v0, "payload["

    const-string v1, "]"

    invoke-static {p0, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getArg0()I
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->arg0:I

    return p0
.end method

.method public final getArg1()I
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->arg1:I

    return p0
.end method

.method public final getChecksum()I
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->checksum:I

    return p0
.end method

.method public final getCommand()I
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->command:I

    return p0
.end method

.method public final getMagic()I
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->magic:I

    return p0
.end method

.method public final getPayload()[B
    .locals 0

    iget-object p0, p0, Ldadb/AdbMessage;->payload:[B

    return-object p0
.end method

.method public final getPayloadLength()I
    .locals 0

    iget p0, p0, Ldadb/AdbMessage;->payloadLength:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Ldadb/AdbMessage;->commandStr()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ldadb/AdbMessage;->arg0:I

    invoke-direct {p0, v1}, Ldadb/AdbMessage;->argStr(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ldadb/AdbMessage;->arg1:I

    invoke-direct {p0, v2}, Ldadb/AdbMessage;->argStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Ldadb/AdbMessage;->payloadStr()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-static {v3, v0, p0}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
