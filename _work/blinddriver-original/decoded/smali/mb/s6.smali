.class public final Lmb/s6;
.super Ljava/io/FilterReader;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, -0x1

    iput p1, p0, Lmb/s6;->l:I

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 6

    .line 1
    iget v0, p0, Lmb/s6;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lmb/s6;->l:I

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_5

    .line 4
    iget-boolean v4, p0, Lmb/s6;->m:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0x75

    if-eq v0, v5, :cond_2

    .line 6
    iput v0, p0, Lmb/s6;->l:I

    .line 7
    iput-boolean v4, p0, Lmb/s6;->m:Z

    return v3

    .line 8
    :cond_2
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 9
    const-string v3, "Incomplete escape sequence"

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_2

    const/4 v1, 0x4

    .line 10
    new-array v1, v1, [C

    int-to-char v0, v0

    .line 11
    aput-char v0, v1, v2

    .line 12
    iget-object p0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result p0

    if-ne p0, v0, :cond_3

    .line 13
    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Lmb/r6;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escape sequence \"\\u"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    throw v0

    .line 17
    :cond_3
    new-instance p0, Lmb/r6;

    .line 18
    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 20
    :cond_4
    new-instance p0, Lmb/r6;

    .line 21
    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lmb/s6;->m:Z

    return v0
.end method

.method public final read([CII)I
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmb/s6;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p2, 0x1

    int-to-char v1, v1

    .line 25
    aput-char v1, p1, p2

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_3

    :goto_1
    if-nez v0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    move p2, v3

    goto :goto_0
.end method
