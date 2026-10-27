.class public final Lorg/codehaus/janino/util/d;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/StringBuilder;

.field public m:I

.field public n:Ljava/util/ArrayList;

.field public o:I


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/d;->l:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static d(Ljava/util/List;)V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0xffff

    const v4, 0xfffc

    const v5, 0xfffd

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_1

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    move v4, v7

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v7, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_5

    sub-int v4, v7, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v6, v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_8

    move v2, v7

    goto :goto_3

    :cond_8
    move v2, v6

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    :cond_9
    move v8, v2

    move v9, v6

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ge v2, v10, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v3, :cond_b

    sub-int v8, v2, v8

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v9, v8

    add-int/lit8 v8, v2, 0x1

    const/16 v11, 0x1e

    if-ge v9, v11, :cond_a

    const-string v11, "                              "

    invoke-virtual {v11, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_a
    new-array v11, v9, [C

    const/16 v12, 0x20

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([CC)V

    invoke-static {v11}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-virtual {v1, v2, v8, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v2, v9

    move v8, v2

    move v9, v10

    :cond_b
    add-int/2addr v2, v7

    goto :goto_4

    :cond_c
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/codehaus/janino/util/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    const v5, 0xfffc

    const v6, 0xfffd

    const/4 v7, 0x1

    if-ge v4, v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lorg/codehaus/janino/util/d;->d(Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    :cond_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const v9, 0xfffe

    if-ne v5, v9, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lorg/codehaus/janino/util/d;->d(Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    move v5, v3

    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const v9, 0xffff

    if-ne v6, v9, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lorg/codehaus/janino/util/d;->d(Ljava/util/List;)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/codehaus/janino/util/d;->o:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_7
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_8

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_8
    const-string v9, "\r\n"

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    move v9, v3

    :goto_4
    if-ge v9, v0, :cond_9

    iget-object v10, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    iget-object v9, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/janino/util/d;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/codehaus/janino/util/d;->n:Ljava/util/ArrayList;

    const v1, 0xfffc

    const v2, 0xfffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/codehaus/janino/util/d;->m:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/codehaus/janino/util/d;->m:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_1

    iget p1, p0, Lorg/codehaus/janino/util/d;->m:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/codehaus/janino/util/d;->m:I

    iget v0, p0, Lorg/codehaus/janino/util/d;->o:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/janino/util/d;->b()V

    :cond_1
    return-void

    :cond_2
    const v0, 0xffff

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lorg/codehaus/janino/util/d;->m:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/codehaus/janino/util/d;->m:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/codehaus/janino/util/d;->m:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/codehaus/janino/util/d;->m:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/janino/util/d;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/codehaus/janino/util/d;->m:I

    iput p1, p0, Lorg/codehaus/janino/util/d;->o:I

    return-void

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v6, 0xfffe

    if-ne v0, v6, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_7

    iget v0, p0, Lorg/codehaus/janino/util/d;->m:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/codehaus/janino/util/d;->m:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_8

    iget v0, p0, Lorg/codehaus/janino/util/d;->m:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/codehaus/janino/util/d;->m:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string v0, "\r\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_9

    :goto_0
    iget v0, p0, Lorg/codehaus/janino/util/d;->m:I

    if-ge v3, v0, :cond_9

    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lorg/codehaus/janino/util/d;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/janino/util/d;->b()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/janino/util/d;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/d;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lorg/codehaus/janino/util/d;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/janino/util/d;->b()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/janino/util/d;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/d;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    iget-object p0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 5

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lorg/codehaus/janino/util/d;->l:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/d;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/d;->c(Ljava/lang/String;)V

    int-to-char p0, p1

    .line 9
    invoke-virtual {v1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1
    int-to-char p0, p1

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/d;->write(I)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final write([CII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/codehaus/janino/util/d;->write(I)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
