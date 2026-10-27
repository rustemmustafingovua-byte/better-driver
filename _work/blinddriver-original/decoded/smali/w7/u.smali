.class public abstract Lw7/u;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le8/b;

    invoke-direct {v0, p1}, Le8/b;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-virtual {p0, v0}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lw7/u;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lz7/g;

    sget-object v1, Lz7/g;->E:Lz7/f;

    invoke-direct {v0, v1}, Le8/b;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x20

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, v0, Lz7/g;->A:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v0, Lz7/g;->B:I

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lz7/g;->C:[Ljava/lang/String;

    new-array v1, v1, [I

    iput-object v1, v0, Lz7/g;->D:[I

    invoke-virtual {v0, p1}, Lz7/g;->n0(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final nullSafe()Lw7/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u;"
        }
    .end annotation

    new-instance v0, Lw7/j;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lw7/j;-><init>(Lw7/u;I)V

    return-object v0
.end method

.method public abstract read(Le8/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lw7/u;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lw7/n;

    .line 7
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    throw p1
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Le8/c;

    invoke-direct {v0, p1}, Le8/c;-><init>(Ljava/io/Writer;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lz7/i;

    invoke-direct {v0}, Lz7/i;-><init>()V

    invoke-virtual {p0, v0, p1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    iget-object p0, v0, Lz7/i;->w:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, v0, Lz7/i;->y:Lcom/google/gson/JsonElement;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected one JSON element but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract write(Le8/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
