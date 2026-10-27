.class public final Lj9/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lj9/y;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lt6/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj9/y;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lj9/y;->m:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lt6/q;->a:Ljava/lang/String;

    invoke-static {v1}, Lj9/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lt6/q;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj9/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " (remaining: "

    const-string v3, "): "

    const-string v4, "Failed to parse type "

    invoke-static {v4, v2, v1, p0, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    const-string v0, "\'"

    invoke-static {v0, p0, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\'%s...\'[truncated %d charaters]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lt6/q;I)Lb6/l;
    .locals 7

    iget-object v0, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lt6/p;

    invoke-virtual {p1}, Lt6/q;->hasMoreTokens()Z

    move-result v1

    const-string v2, "Unexpected end-of-string"

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lt6/q;->nextToken()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lt6/p;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lt6/q;->hasMoreTokens()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lt6/q;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v5, "<"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lt6/q;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1, p2}, Lj9/y;->c(Lt6/q;I)Lb6/l;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lt6/q;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lt6/q;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object p0, Lt6/o;->q:[Lb6/l;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lb6/l;

    :goto_1
    invoke-static {v1, p0}, Lt6/o;->c(Ljava/lang/Class;[Lb6/l;)Lt6/o;

    move-result-object p0

    invoke-virtual {v0, v4, v1, p0}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v6, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected token \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', expected \',\' or \'>\')"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj9/y;->a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {p1, v2}, Lj9/y;->a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "too deeply nested; exceeds maximum of 1000 nesting levels"

    invoke-static {p1, p0}, Lj9/y;->a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    iput-object v3, p1, Lt6/q;->c:Ljava/lang/String;

    :cond_6
    sget-object p0, Lt6/o;->r:Lt6/o;

    invoke-virtual {v0, v4, v1, p0}, Lt6/p;->c(Lg5/m;Ljava/lang/Class;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot locate class \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', problem: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj9/y;->a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {p1, v2}, Lj9/y;->a(Lt6/q;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lj9/y;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
