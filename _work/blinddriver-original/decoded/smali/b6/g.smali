.class public abstract Lb6/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile l:I = -0x1

.field public static volatile m:J = 0x0L

.field public static volatile n:D = 1.0


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.work.workdb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "context.getDatabasePath(WORK_DATABASE_NAME)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    sget-object v3, Ly4/p;->a:Ljava/lang/String;

    const-string v4, "Migrating WorkDatabase to the no-backup directory"

    invoke-virtual {v1, v3, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "context.noBackupFilesDir"

    invoke-static {p0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Ly4/p;->b:[Ljava/lang/String;

    array-length v0, p0

    invoke-static {v0}, Lu8/v;->J(I)I

    move-result v0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    move v0, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v0, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p0, v4

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lt8/j;

    invoke-direct {p0, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lu8/v;->K(Lt8/j;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v2

    sget-object v3, Ly4/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Over-writing contents of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migrated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Renaming "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    sget-object v2, Ly4/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static final D(Lv1/b;Lr/m1;Lv1/a;)J
    .locals 5

    if-nez p1, :cond_0

    iget-wide p0, p0, Lv1/b;->c:J

    return-wide p0

    :cond_0
    iget p2, p2, Lv1/a;->a:I

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    iget-wide v3, p0, Lv1/b;->c:J

    shr-long/2addr v3, v2

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    iget-wide v3, p0, Lv1/b;->c:J

    and-long/2addr v3, v0

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_0
    sget-object p2, Lr/m1;->m:Lr/m1;

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v3, p2

    shl-long/2addr p0, v2

    :goto_1
    and-long/2addr v0, v3

    or-long/2addr p0, v0

    return-wide p0

    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v3, p0

    shl-long p0, p1, v2

    goto :goto_1

    :cond_3
    iget-wide p0, p0, Lv1/b;->c:J

    return-wide p0
.end method

.method public static final E(Lv1/b;Lr/m1;Lv1/a;)J
    .locals 5

    iget-wide v0, p0, Lv1/b;->g:J

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget p0, p2, Lv1/a;->a:I

    const-wide v2, 0xffffffffL

    const/16 p2, 0x20

    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    shr-long/2addr v0, p2

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne p0, v4, :cond_3

    and-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_0
    sget-object v0, Lr/m1;->m:Lr/m1;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p0, p2

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr v0, p2

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_3
    return-wide v0
.end method

.method public static H(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "digest(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v2, p0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-byte v5, p0, v3

    const/4 v6, 0x1

    add-int/2addr v4, v6

    if-le v4, v6, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static I(Lkb/a;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkb/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v1, p0

    check-cast v1, Lkb/c;

    invoke-virtual {v1}, Lkb/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-class v1, Lmb/v;

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Ljava/lang/String;)Lt8/s;
    .locals 8

    const/16 v0, 0xa

    invoke-static {v0}, Lwa/h;->i(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_1
    move v4, v2

    :cond_2
    const v3, 0x71c71c7

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Character;->digit(II)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v5}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v7

    if-lez v7, :cond_4

    if-ne v5, v3, :cond_5

    const/4 v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v6, v2

    invoke-static {v6, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v2

    if-gez v2, :cond_6

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_7
    new-instance p0, Lt8/s;

    invoke-direct {p0, v2}, Lt8/s;-><init>(I)V

    return-object p0
.end method

.method public static final L(Ljava/lang/String;)Lt8/u;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Lwa/h;->i(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v3, v0

    const-wide v5, 0x71c71c71c71c71cL

    const-wide/16 v7, 0x0

    move-wide v9, v5

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, v0}, Ljava/lang/Character;->digit(II)I

    move-result v11

    if-gez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v12

    if-lez v12, :cond_3

    cmp-long v9, v9, v5

    if-nez v9, :cond_4

    const-wide/16 v9, -0x1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v12

    if-lez v12, :cond_3

    goto :goto_1

    :cond_3
    mul-long/2addr v7, v3

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-long/2addr v11, v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v7

    if-gez v7, :cond_5

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-wide v7, v11

    goto :goto_0

    :cond_6
    new-instance p0, Lt8/u;

    invoke-direct {p0, v7, v8}, Lt8/u;-><init>(J)V

    return-object p0
.end method

.method public static M(Ljava/io/File;DLjava/io/File;)V
    .locals 5

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x2000

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-static {v3}, Lr5/h1;->s(Ljava/io/BufferedReader;)Lq9/h;

    move-result-object v1

    invoke-static {v1}, Led/n;->e(Lq9/h;)Lg5/m;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance p3, Ljava/io/BufferedWriter;

    invoke-direct {p3, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lr5/h1;->s(Ljava/io/BufferedReader;)Lq9/h;

    move-result-object v0

    check-cast v0, Lq9/a;

    invoke-virtual {v0}, Lq9/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1, p1, p2}, Led/n;->b(Ljava/lang/String;Lg5/m;D)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p3}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {p3, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catchall_4
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p1

    invoke-static {v3, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final b(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;Lr0/q;II)V
    .locals 16

    move-object/from16 v12, p9

    move/from16 v0, p10

    const v1, 0x3335543

    invoke-virtual {v12, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, v0, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-virtual {v12, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v3, v0

    :goto_1
    or-int/lit8 v4, v3, 0x10

    and-int/lit8 v5, p11, 0x4

    if-eqz v5, :cond_4

    or-int/lit16 v4, v3, 0x190

    :cond_3
    move-object/from16 v3, p2

    goto :goto_3

    :cond_4
    and-int/lit16 v3, v0, 0x180

    if-nez v3, :cond_3

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_2

    :cond_5
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v4, v6

    :goto_3
    or-int/lit16 v4, v4, 0xc00

    and-int/lit16 v6, v0, 0x6000

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x10

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-virtual {v12, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x4000

    goto :goto_4

    :cond_6
    move-object/from16 v6, p3

    :cond_7
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v4, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p3

    :goto_5
    const/high16 v7, 0x2cb0000

    or-int/2addr v4, v7

    const/high16 v7, 0x30000000

    and-int/2addr v7, v0

    move-object/from16 v9, p8

    if-nez v7, :cond_a

    invoke-virtual {v12, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/high16 v7, 0x20000000

    goto :goto_6

    :cond_9
    const/high16 v7, 0x10000000

    :goto_6
    or-int/2addr v4, v7

    :cond_a
    const v7, 0x12492493

    and-int/2addr v7, v4

    const v8, 0x12492492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v7, v8, :cond_b

    move v7, v11

    goto :goto_7

    :cond_b
    move v7, v10

    :goto_7
    and-int/lit8 v8, v4, 0x1

    invoke-virtual {v12, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v12}, Lr0/q;->Y()V

    and-int/lit8 v7, v0, 0x1

    const v8, -0xe380001

    const v13, -0xe071

    if-eqz v7, :cond_e

    invoke-virtual {v12}, Lr0/q;->C()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v12}, Lr0/q;->W()V

    and-int/lit8 v1, v4, -0x71

    and-int/lit8 v5, p11, 0x10

    if-eqz v5, :cond_d

    and-int v1, v4, v13

    :cond_d
    and-int/2addr v1, v8

    move-object/from16 v7, p4

    move-object/from16 v4, p5

    move/from16 v11, p6

    move-object v5, v3

    move-object v8, v6

    move-object/from16 v6, p7

    move v3, v1

    move-object v1, v2

    move-object/from16 v2, p1

    goto :goto_b

    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    sget-object v1, Lf1/o;->a:Lf1/o;

    goto :goto_9

    :cond_f
    move-object v1, v2

    :goto_9
    invoke-static {v12}, Lw/r;->a(Lr0/q;)Lw/p;

    move-result-object v2

    and-int/lit8 v7, v4, -0x71

    if-eqz v5, :cond_10

    int-to-float v3, v10

    new-instance v5, Lu/s0;

    invoke-direct {v5, v3, v3, v3, v3}, Lu/s0;-><init>(FFFF)V

    goto :goto_a

    :cond_10
    move-object v5, v3

    :goto_a
    and-int/lit8 v3, p11, 0x10

    if-eqz v3, :cond_11

    sget-object v3, Lu/h;->c:Lu/c;

    and-int v7, v4, v13

    move-object v6, v3

    :cond_11
    sget-object v3, Lf1/c;->x:Lf1/h;

    invoke-static {v12}, Lg5/f;->x(Lr0/q;)Lr/k;

    move-result-object v4

    invoke-static {v12}, Lp/u1;->a(Lr0/q;)Lp/j;

    move-result-object v10

    and-int/2addr v7, v8

    move v8, v7

    move-object v7, v3

    move v3, v8

    move-object v8, v6

    move-object v6, v10

    :goto_b
    invoke-virtual {v12}, Lr0/q;->r()V

    and-int/lit8 v10, v3, 0xe

    or-int/lit16 v10, v10, 0x6000

    and-int/lit16 v13, v3, 0x380

    or-int/2addr v10, v13

    const v13, 0x30180c00

    or-int/2addr v13, v10

    shr-int/lit8 v10, v3, 0xc

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v3, v3, 0x12

    and-int/lit16 v3, v3, 0x1c00

    or-int v14, v10, v3

    const/16 v15, 0x1900

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move v5, v11

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v15}, Lc6/o;->C(Lf1/r;Lw/p;Lu/s0;ZLr/k;ZLp/j;Lf1/d;Lu/g;Lf1/i;Lu/e;Li9/c;Lr0/q;III)V

    move-object v3, v6

    move-object v6, v4

    move-object v4, v8

    move-object v8, v3

    move-object v3, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_c

    :cond_12
    invoke-virtual/range {p9 .. p9}, Lr0/q;->W()V

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object v1, v2

    move-object v4, v6

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    :goto_c
    invoke-virtual/range {p9 .. p9}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_13

    new-instance v0, Lo0/v;

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lo0/v;-><init>(Lf1/r;Lw/p;Lu/s0;Lu/g;Lf1/d;Lr/k;ZLp/j;Li9/c;II)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_13
    return-void
.end method

.method public static final c(Lf1/r;Lw/p;Lu/s0;Lu/e;Lf1/i;Lr/k;ZLp/j;Li9/c;Lr0/q;I)V
    .locals 16

    move-object/from16 v12, p9

    const v0, -0x705086e1

    invoke-virtual {v12, v0}, Lr0/q;->c0(I)Lr0/q;

    const v0, 0x2cb2d96

    or-int v0, p10, v0

    move-object/from16 v10, p8

    invoke-virtual {v12, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    :goto_0
    or-int/2addr v0, v1

    const v1, 0x12492493

    and-int/2addr v1, v0

    const v2, 0x12492492

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v12, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v12}, Lr0/q;->Y()V

    and-int/lit8 v1, p10, 0x1

    const v2, -0xe38e071

    if-eqz v1, :cond_3

    invoke-virtual {v12}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v12}, Lr0/q;->W()V

    and-int/2addr v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move v3, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {v12}, Lw/r;->a(Lr0/q;)Lw/p;

    move-result-object v1

    int-to-float v3, v3

    new-instance v5, Lu/s0;

    invoke-direct {v5, v3, v3, v3, v3}, Lu/s0;-><init>(FFFF)V

    sget-object v3, Lu/h;->a:Lu/n;

    sget-object v6, Lf1/c;->u:Lf1/i;

    invoke-static {v12}, Lg5/f;->x(Lr0/q;)Lr/k;

    move-result-object v7

    invoke-static {v12}, Lp/u1;->a(Lr0/q;)Lp/j;

    move-result-object v8

    and-int/2addr v0, v2

    sget-object v2, Lf1/o;->a:Lf1/o;

    move-object v10, v3

    move-object v9, v6

    move-object v6, v8

    move v3, v0

    move-object v0, v2

    move-object v2, v5

    move v5, v4

    move-object v4, v7

    :goto_3
    invoke-virtual {v12}, Lr0/q;->r()V

    shr-int/lit8 v3, v3, 0x12

    and-int/lit16 v3, v3, 0x1c00

    const/16 v7, 0x30

    or-int v14, v7, v3

    const/16 v15, 0x700

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v13, 0x186d86

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v15}, Lc6/o;->C(Lf1/r;Lw/p;Lu/s0;ZLr/k;ZLp/j;Lf1/d;Lu/g;Lf1/i;Lu/e;Li9/c;Lr0/q;III)V

    move-object v3, v9

    move-object v9, v6

    move-object v6, v3

    move-object v3, v1

    move-object v7, v4

    move v8, v5

    move-object v5, v10

    move-object v4, v2

    move-object v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual/range {p9 .. p9}, Lr0/q;->W()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    :goto_4
    invoke-virtual/range {p9 .. p9}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lod/k3;

    move-object/from16 v10, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lod/k3;-><init>(Lf1/r;Lw/p;Lu/s0;Lu/e;Lf1/i;Lr/k;ZLp/j;Li9/c;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final e(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, ": "

    invoke-static {p0, v0, p1}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "[N/A]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]...["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "\""

    invoke-static {v0, p0, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lq3/k;Lv1/b;Lr/m1;Lv1/a;Lpa/x;J)V
    .locals 13

    move-object/from16 v1, p4

    iget-object v2, v1, Lpa/x;->b:Ljava/util/ArrayList;

    iget-wide v3, p1, Lv1/b;->c:J

    iget-boolean v5, p1, Lv1/b;->d:Z

    const/16 v6, 0x20

    shr-long/2addr v3, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-wide v7, p1, Lv1/b;->c:J

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    long-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iget-boolean v7, p1, Lv1/b;->h:Z

    const/4 v8, 0x0

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    iput v8, v1, Lpa/x;->a:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-static {p1}, Lb6/g;->j(Lv1/b;)Z

    move-result v11

    if-nez v11, :cond_6

    if-nez v7, :cond_1

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget v3, v1, Lpa/x;->a:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lpa/x;->a:I

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v3, v1, Lpa/x;->a:I

    if-ne v3, v4, :cond_3

    iput v8, v1, Lpa/x;->a:I

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v8

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/b;

    iget-wide v11, v5, Lv1/b;->c:J

    shr-long/2addr v11, v6

    long-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lu8/m;->Y(Ljava/util/ArrayList;)D

    move-result-wide v3

    double-to-float v3, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2
    if-ge v8, v4, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/b;

    iget-wide v11, v5, Lv1/b;->c:J

    and-long/2addr v11, v9

    long-to-int v5, v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lu8/m;->Y(Ljava/util/ArrayList;)D

    move-result-wide v1

    double-to-float v4, v1

    :cond_6
    :goto_3
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v1, v6

    and-long/2addr v3, v9

    or-long/2addr v1, v3

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v3, p3

    iget v3, v3, Lv1/a;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    shr-long/2addr v1, v6

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    and-long/2addr v1, v9

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    :goto_4
    sget-object v2, Lr/m1;->m:Lr/m1;

    const/4 v3, 0x0

    if-ne p2, v2, :cond_9

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v0, v6

    and-long/2addr v2, v9

    or-long v1, v0, v2

    goto :goto_5

    :cond_9
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v2, v6

    and-long/2addr v0, v9

    or-long v1, v2, v0

    :cond_a
    :goto_5
    iget-wide v3, p1, Lv1/b;->b:J

    move-wide/from16 v5, p5

    invoke-static {v1, v2, v5, v6}, Ll1/b;->e(JJ)J

    move-result-wide v0

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lz1/b;

    invoke-virtual {p0, v3, v4, v0, v1}, Lz1/b;->a(JJ)V

    return-void
.end method

.method public static final j(Lv1/b;)Z
    .locals 1

    iget-boolean v0, p0, Lv1/b;->h:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lv1/b;->d:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final k(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Led/k;)V
    .locals 3

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const-wide v1, 0x1a0c4506c00L

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v0, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p2, v0}, Led/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public static l(III)V
    .locals 4

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " > toIndex: "

    invoke-static {v0, p0, v1, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ", toIndex: "

    const-string v3, ", size: "

    invoke-static {v0, p0, v2, p1, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static m(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltb/a;

    iget-object v2, v1, Ltb/a;->c:Lk0/l;

    iget-object v3, v1, Ltb/a;->b:[Lpb/a;

    iget-object v4, v2, Lk0/l;->n:Ljava/lang/Object;

    check-cast v4, Ltb/a;

    iget-object v5, v4, Ltb/a;->b:[Lpb/a;

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v5, v8, v9, v10}, Lk0/l;->e(Lpb/a;ID)V

    iget-object v4, v4, Ltb/a;->b:[Lpb/a;

    aget-object v4, v4, v6

    invoke-virtual {v2, v4, v6, v9, v10}, Lk0/l;->e(Lpb/a;ID)V

    iget-object v2, v2, Lk0/l;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltb/c;

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltb/c;

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-eqz v4, :cond_9

    iget-object v12, v4, Ltb/c;->l:Lpb/a;

    iget v13, v4, Ltb/c;->m:I

    iget-wide v14, v4, Ltb/c;->n:D

    cmpl-double v14, v14, v9

    if-nez v14, :cond_3

    if-nez v13, :cond_2

    goto :goto_6

    :cond_2
    add-int/lit8 v14, v13, -0x1

    goto :goto_3

    :cond_3
    move v14, v13

    :goto_3
    aget-object v15, v3, v14

    if-eqz v6, :cond_4

    iget v5, v6, Ltb/c;->m:I

    if-lt v5, v14, :cond_4

    iget-object v15, v6, Ltb/c;->l:Lpb/a;

    :cond_4
    new-instance v5, Lq3/k;

    iget-object v6, v1, Le1/b;->a:Ljava/lang/Object;

    check-cast v6, Lq3/k;

    invoke-direct {v5, v6}, Lq3/k;-><init>(Lq3/k;)V

    iget-object v6, v5, Lq3/k;->m:Ljava/lang/Object;

    check-cast v6, [Lq5/a;

    aget-object v14, v6, v8

    iget-object v14, v14, Lq5/a;->m:[I

    array-length v8, v14

    const/16 v16, 0x2

    if-gt v8, v7, :cond_5

    goto :goto_4

    :cond_5
    aget v8, v14, v7

    aget v17, v14, v16

    aput v17, v14, v7

    aput v8, v14, v16

    :goto_4
    aget-object v6, v6, v7

    iget-object v6, v6, Lq5/a;->m:[I

    array-length v8, v6

    if-gt v8, v7, :cond_6

    goto :goto_5

    :cond_6
    aget v8, v6, v7

    aget v14, v6, v16

    aput v14, v6, v7

    aput v8, v6, v16

    :goto_5
    new-instance v6, Ltb/b;

    invoke-direct {v6, v1, v12, v15, v5}, Ltb/b;-><init>(Ltb/a;Lpb/a;Lpb/a;Lq3/k;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v13, 0x1

    array-length v6, v3

    if-lt v5, v6, :cond_7

    if-nez v11, :cond_7

    goto :goto_7

    :cond_7
    aget-object v5, v3, v5

    if-eqz v11, :cond_8

    iget v6, v11, Ltb/c;->m:I

    if-ne v6, v13, :cond_8

    iget-object v5, v11, Ltb/c;->l:Lpb/a;

    :cond_8
    new-instance v6, Ltb/b;

    new-instance v8, Lq3/k;

    iget-object v13, v1, Le1/b;->a:Ljava/lang/Object;

    check-cast v13, Lq3/k;

    invoke-direct {v8, v13}, Lq3/k;-><init>(Lq3/k;)V

    invoke-direct {v6, v1, v12, v5, v8}, Ltb/b;-><init>(Ltb/a;Lpb/a;Lpb/a;Lq3/k;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_7
    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    move-object v6, v4

    move-object v4, v11

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_b
    return-object v0
.end method

.method public static o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;
    .locals 1

    new-instance v0, Lkb/b;

    invoke-direct {v0, p1}, Lkb/b;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lkb/c;

    invoke-direct {p1, p0, v0}, Lkb/c;-><init>(Ljava/util/Iterator;Lkb/b;)V

    return-object p1
.end method

.method public static p(Lb6/d;Lj6/h;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lb6/d;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/d;

    instance-of v2, v0, Lb6/c;

    if-eqz v2, :cond_0

    check-cast v0, Lb6/c;

    check-cast v0, Lw6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lx6/b;

    invoke-virtual {p1, v0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lx6/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lx6/b;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    :cond_3
    return-object v1
.end method

.method public static q(Lb6/d;Lj6/h;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lb6/d;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/d;

    instance-of v2, v0, Lb6/c;

    if-eqz v2, :cond_0

    check-cast v0, Lb6/c;

    check-cast v0, Lw6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lx6/c;

    invoke-virtual {p1, v0}, Lj6/h;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lx6/c;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lx6/c;->value()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    :cond_3
    return-object v1
.end method

.method public static s()Ljava/util/Set;
    .locals 3

    :try_start_0
    const-string v0, "android.text.EmojiConsistency"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getEmojiConsistencySet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [I

    if-nez v2, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public static v(Lpb/a;Lpb/a;Lpb/a;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v0, Lpb/a;->l:D

    iget-wide v5, v0, Lpb/a;->m:D

    iget-wide v7, v1, Lpb/a;->l:D

    iget-wide v0, v1, Lpb/a;->m:D

    iget-wide v9, v2, Lpb/a;->l:D

    iget-wide v11, v2, Lpb/a;->m:D

    sub-double v13, v3, v9

    sub-double v15, v0, v11

    mul-double/2addr v13, v15

    sub-double v15, v5, v11

    sub-double v17, v7, v9

    mul-double v17, v17, v15

    move-wide v15, v9

    sub-double v9, v13, v17

    const-wide/16 v19, 0x0

    cmpl-double v2, v13, v19

    if-lez v2, :cond_1

    cmpg-double v2, v17, v19

    if-gtz v2, :cond_0

    invoke-static {v9, v10}, Lwa/h;->v(D)I

    move-result v2

    :goto_0
    move-wide/from16 v17, v11

    goto :goto_3

    :cond_0
    add-double v13, v13, v17

    goto :goto_1

    :cond_1
    cmpg-double v2, v13, v19

    if-gez v2, :cond_5

    cmpl-double v2, v17, v19

    if-ltz v2, :cond_2

    invoke-static {v9, v10}, Lwa/h;->v(D)I

    move-result v2

    goto :goto_0

    :cond_2
    neg-double v13, v13

    sub-double v13, v13, v17

    :goto_1
    const-wide v17, 0x3cd203af9ee75616L    # 1.0E-15

    mul-double v13, v13, v17

    cmpl-double v2, v9, v13

    move-wide/from16 v17, v11

    if-gez v2, :cond_4

    neg-double v11, v9

    cmpl-double v2, v11, v13

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v9, v10}, Lwa/h;->v(D)I

    move-result v2

    goto :goto_3

    :cond_5
    move-wide/from16 v17, v11

    invoke-static {v9, v10}, Lwa/h;->v(D)I

    move-result v2

    :goto_3
    const/4 v9, 0x1

    if-gt v2, v9, :cond_6

    return v2

    :cond_6
    new-instance v2, Lbc/a;

    invoke-direct {v2, v7, v8}, Lbc/a;-><init>(D)V

    neg-double v3, v3

    invoke-virtual {v2, v3, v4}, Lbc/a;->l(D)V

    new-instance v3, Lbc/a;

    invoke-direct {v3, v0, v1}, Lbc/a;-><init>(D)V

    neg-double v4, v5

    invoke-virtual {v3, v4, v5}, Lbc/a;->l(D)V

    neg-double v4, v7

    add-double v6, v15, v4

    sub-double v10, v6, v15

    sub-double v12, v6, v10

    sub-double/2addr v4, v10

    sub-double v10, v15, v12

    add-double/2addr v10, v4

    add-double v10, v10, v19

    add-double v4, v6, v10

    sub-double/2addr v6, v4

    add-double/2addr v6, v10

    add-double v10, v4, v6

    sub-double/2addr v4, v10

    add-double/2addr v4, v6

    neg-double v0, v0

    add-double v6, v17, v0

    sub-double v12, v6, v17

    sub-double v14, v6, v12

    sub-double/2addr v0, v12

    sub-double v12, v17, v14

    add-double/2addr v12, v0

    add-double v12, v12, v19

    add-double v0, v6, v12

    sub-double/2addr v6, v0

    add-double/2addr v6, v12

    add-double v12, v0, v6

    sub-double/2addr v0, v12

    add-double/2addr v0, v6

    invoke-virtual {v2, v12, v13, v0, v1}, Lbc/a;->r(DD)V

    invoke-virtual {v3, v10, v11, v4, v5}, Lbc/a;->r(DD)V

    invoke-virtual {v2, v3}, Lbc/a;->u(Lbc/a;)V

    iget-wide v0, v2, Lbc/a;->l:D

    cmpl-double v3, v0, v19

    if-lez v3, :cond_7

    goto :goto_4

    :cond_7
    cmpg-double v0, v0, v19

    if-gez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-wide v0, v2, Lbc/a;->m:D

    cmpl-double v2, v0, v19

    if-lez v2, :cond_9

    :goto_4
    return v9

    :cond_9
    cmpg-double v0, v0, v19

    if-gez v0, :cond_a

    :goto_5
    const/4 v0, -0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static x([Lpb/a;)Z
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lpb/a;

    :cond_0
    array-length v1, p0

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    aget-object v3, p0, v0

    iget-wide v4, v3, Lpb/a;->m:D

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v9, v0

    move v8, v6

    :goto_0
    if-gt v8, v2, :cond_3

    aget-object v10, p0, v8

    iget-wide v10, v10, Lpb/a;->m:D

    cmpl-double v4, v10, v4

    if-lez v4, :cond_2

    iget-wide v4, v3, Lpb/a;->m:D

    cmpl-double v4, v10, v4

    if-ltz v4, :cond_2

    aget-object v3, p0, v8

    add-int/lit8 v4, v8, -0x1

    aget-object v4, p0, v4

    move-object v7, v4

    move v9, v8

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-wide v4, v10

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    move v4, v9

    :cond_5
    add-int/2addr v4, v6

    rem-int/2addr v4, v2

    if-eq v4, v9, :cond_6

    aget-object v5, p0, v4

    iget-wide v10, v5, Lpb/a;->m:D

    iget-wide v12, v3, Lpb/a;->m:D

    cmpl-double v5, v10, v12

    if-eqz v5, :cond_5

    :cond_6
    aget-object v2, p0, v4

    if-lez v4, :cond_7

    sub-int/2addr v4, v6

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v1, -0x2

    :goto_1
    aget-object p0, p0, v4

    invoke-virtual {v3, p0}, Lpb/a;->i(Lpb/a;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v7, v3}, Lpb/a;->i(Lpb/a;)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v2, v3}, Lpb/a;->i(Lpb/a;)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v7, v2}, Lpb/a;->i(Lpb/a;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v7, v3, v2}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result p0

    if-ne p0, v6, :cond_a

    goto :goto_2

    :cond_9
    iget-wide v1, p0, Lpb/a;->l:D

    iget-wide v3, v3, Lpb/a;->l:D

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpg-double p0, v1, v3

    if-gez p0, :cond_a

    :goto_2
    return v6

    :cond_a
    :goto_3
    return v0
.end method

.method public static z(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6

    const-string v0, "history"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lua/nav/support/DevMessage;

    iget-boolean v3, v3, Lua/nav/support/DevMessage;->d:Z

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lua/nav/support/DevMessage;

    iget-wide v4, v4, Lua/nav/support/DevMessage;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lua/nav/support/DevMessage;

    iget-wide v3, v3, Lua/nav/support/DevMessage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0, v1}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Lbd/d;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lbd/d;-><init>(I)V

    invoke-static {p0, p1}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    const/16 p1, 0x32

    invoke-static {p1, p0}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B(Lj6/d0;)Lr5/d1;
    .locals 2

    iget-object v0, p1, Lj6/d0;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Lb6/g;->r()Ld6/m;

    move-result-object p0

    invoke-virtual {p0}, Ld6/m;->j()V

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {v0, p0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/d1;

    iget-object p1, p1, Lj6/d0;->d:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lr5/d1;->b(Ljava/lang/Class;)Lr5/d1;

    move-result-object p0

    return-object p0
.end method

.method public C(Lj6/d0;)V
    .locals 1

    iget-object p1, p1, Lj6/d0;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Lb6/g;->r()Ld6/m;

    move-result-object p0

    invoke-virtual {p0}, Ld6/m;->j()V

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {p1, p0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb6/g;->u()Lt6/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    :goto_0
    invoke-virtual {p0, p2}, Lb6/g;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract G(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract J()Ljava/lang/String;
.end method

.method public n(Ljava/lang/Object;)Lu6/k;
    .locals 2

    instance-of v0, p1, Lu6/k;

    if-eqz v0, :cond_0

    check-cast p1, Lu6/k;

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Class;

    const-class v0, Lu6/j;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lu6/k;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb6/g;->r()Ld6/m;

    move-result-object p0

    invoke-virtual {p0}, Ld6/m;->j()V

    sget-object v0, Lb6/x;->A:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    invoke-static {p1, p0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu6/k;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; expected Class<Converter>"

    invoke-static {p1, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Converter definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected type Converter or Class<Converter> instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract r()Ld6/m;
.end method

.method public abstract t()Lb6/l;
.end method

.method public abstract u()Lt6/p;
.end method

.method public abstract w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;
.end method

.method public y()Z
    .locals 0

    invoke-virtual {p0}, Lb6/g;->t()Lb6/l;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
