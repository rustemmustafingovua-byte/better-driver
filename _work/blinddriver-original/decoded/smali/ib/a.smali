.class public final Lib/a;
.super Ljava/io/FilterReader;
.source "SourceFile"


# instance fields
.field public final synthetic l:Ljava/io/FileWriter;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/io/FileWriter;)V
    .locals 0

    iput-object p2, p0, Lib/a;->l:Ljava/io/FileWriter;

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    iget-object p0, p0, Lib/a;->l:Ljava/io/FileWriter;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    .line 2
    iget-object p0, p0, Lib/a;->l:Ljava/io/FileWriter;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    return v0
.end method

.method public final read([CII)I
    .locals 1

    .line 5
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p3

    const/4 v0, -0x1

    .line 6
    iget-object p0, p0, Lib/a;->l:Ljava/io/FileWriter;

    if-ne p3, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return p3

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return p3
.end method
