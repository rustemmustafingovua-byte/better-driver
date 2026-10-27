.class public final Ldadb/AdbKeyPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldadb/AdbKeyPair$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldadb/AdbKeyPair$Companion;

.field private static final KEY_LENGTH_BITS:I = 0x800

.field private static final KEY_LENGTH_BYTES:I = 0x100

.field private static final KEY_LENGTH_WORDS:I = 0x40

.field private static final SIGNATURE_PADDING:[B


# instance fields
.field private final privateKey:Ljava/security/PrivateKey;

.field private final publicKeyBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldadb/AdbKeyPair$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldadb/AdbKeyPair$Companion;-><init>(Lj9/g;)V

    sput-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    const/16 v0, 0xec

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ldadb/AdbKeyPair;->SIGNATURE_PADDING:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[B)V
    .locals 1

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKeyBytes"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/AdbKeyPair;->privateKey:Ljava/security/PrivateKey;

    iput-object p2, p0, Ldadb/AdbKeyPair;->publicKeyBytes:[B

    return-void
.end method

.method public static final generate(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {v0, p0, p1}, Ldadb/AdbKeyPair$Companion;->generate(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static final read(Ljava/io/File;)Ldadb/AdbKeyPair;
    .locals 1

    .line 1
    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {v0, p0}, Ldadb/AdbKeyPair$Companion;->read(Ljava/io/File;)Ldadb/AdbKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static final read(Ljava/io/File;Ljava/io/File;)Ldadb/AdbKeyPair;
    .locals 1

    .line 2
    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {v0, p0, p1}, Ldadb/AdbKeyPair$Companion;->read(Ljava/io/File;Ljava/io/File;)Ldadb/AdbKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static final readDefault()Ldadb/AdbKeyPair;
    .locals 1

    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {v0}, Ldadb/AdbKeyPair$Companion;->readDefault()Ldadb/AdbKeyPair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getPublicKeyBytes$dadb()[B
    .locals 0

    iget-object p0, p0, Ldadb/AdbKeyPair;->publicKeyBytes:[B

    return-object p0
.end method

.method public final signPayload$dadb(Ldadb/AdbMessage;)[B
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RSA/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Ldadb/AdbKeyPair;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object p0, Ldadb/AdbKeyPair;->SIGNATURE_PADDING:[B

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->update([B)[B

    invoke-virtual {p1}, Ldadb/AdbMessage;->getPayload()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ldadb/AdbMessage;->getPayloadLength()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    const-string p1, "doFinal(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
