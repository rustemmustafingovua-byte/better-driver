.class public final Ldadb/AdbKeyPair$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/AdbKeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldadb/AdbKeyPair$Companion;-><init>()V

    return-void
.end method

.method private final convertRsaPublicKeyToAdbFormat(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 11

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "setBit(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    const-string v3, "getModulus(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x800

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string v1, "modPow(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v3, "remainder(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v3, "modInverse(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x40

    new-array v4, v3, [I

    new-array v5, v3, [I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const-string v8, "divideAndRemainder(...)"

    invoke-static {p0, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v9, p0, v6

    const/4 v10, 0x1

    aget-object p0, p0, v10

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    aput p0, v5, v7

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v2, p0, v6

    aget-object p0, p0, v10

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    aput p0, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object p0, v9

    goto :goto_0

    :cond_0
    const/16 p0, 0x20c

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const-string v0, "order(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v0, v6

    :goto_1
    if-ge v0, v3, :cond_1

    aget v1, v4, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v6, v3, :cond_2

    aget v0, v5, v6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string p1, "array(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic read$default(Ldadb/AdbKeyPair$Companion;Ljava/io/File;Ljava/io/File;ILjava/lang/Object;)Ldadb/AdbKeyPair;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ldadb/AdbKeyPair$Companion;->read(Ljava/io/File;Ljava/io/File;)Ldadb/AdbKeyPair;

    move-result-object p0

    return-object p0
.end method

.method private final readAdbPublicKey(Ljava/io/File;)[B
    .locals 1

    invoke-static {p1}, Lf9/j;->x(Ljava/io/File;)[B

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    const/4 v0, 0x0

    aput-byte v0, p1, p0

    return-object p1
.end method


# virtual methods
.method public final generate(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    const-string p0, "privateKeyFile"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "publicKeyFile"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    const-string p1, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "getBytes(...)"

    invoke-static {p1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x40

    invoke-static {v2, p1}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object p1

    const-string v2, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\n-----END PRIVATE KEY-----"

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_1
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p2

    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type java.security.interfaces.RSAPublicKey"

    invoke-static {p0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v0, p0}, Ldadb/AdbKeyPair$Companion;->convertRsaPublicKeyToAdbFormat(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, " unknown@unknown"

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :catchall_2
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final read(Ljava/io/File;)Ldadb/AdbKeyPair;
    .locals 2

    .line 1
    const-string v0, "privateKeyFile"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Ldadb/AdbKeyPair$Companion;->read$default(Ldadb/AdbKeyPair$Companion;Ljava/io/File;Ljava/io/File;ILjava/lang/Object;)Ldadb/AdbKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public final read(Ljava/io/File;Ljava/io/File;)Ldadb/AdbKeyPair;
    .locals 2

    const-string v0, "privateKeyFile"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Ldadb/PKCS8;->INSTANCE:Ldadb/PKCS8;

    invoke-static {p1}, Lf9/j;->x(Ljava/io/File;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ldadb/PKCS8;->parse([B)Ljava/security/PrivateKey;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p2}, Ldadb/AdbKeyPair$Companion;->readAdbPublicKey(Ljava/io/File;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    new-array p0, p0, [B

    .line 6
    :goto_0
    new-instance p2, Ldadb/AdbKeyPair;

    invoke-direct {p2, p1, p0}, Ldadb/AdbKeyPair;-><init>(Ljava/security/PrivateKey;[B)V

    return-object p2
.end method

.method public final readDefault()Ldadb/AdbKeyPair;
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".android/adbkey"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".android/adbkey.pub"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v2}, Ldadb/AdbKeyPair$Companion;->generate(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, v0, v2}, Ldadb/AdbKeyPair$Companion;->read(Ljava/io/File;Ljava/io/File;)Ldadb/AdbKeyPair;

    move-result-object p0

    return-object p0
.end method
