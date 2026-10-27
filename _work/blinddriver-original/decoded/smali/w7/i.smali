.class public final Lw7/i;
.super Lw7/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw7/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le8/b;I)Lcom/google/gson/JsonElement;
    .locals 2

    invoke-static {p1}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le8/b;->V()V

    sget-object p0, Lw7/o;->l:Lw7/o;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, La6/q;->y(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Le8/b;->K()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/JsonPrimitive;

    new-instance v0, Ly7/i;

    invoke-direct {v0, p0}, Ly7/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(Le8/c;Lcom/google/gson/JsonElement;)V
    .locals 2

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Le8/c;->P(Ljava/lang/Number;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Le8/c;->S(Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Le8/c;->c()V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {p0, v0}, Lw7/i;->b(Le8/c;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Le8/c;->k()V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Le8/c;->d()V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Le8/c;->n(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {p0, v0}, Lw7/i;->b(Le8/c;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Le8/c;->m()V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p0}, Le8/c;->t()Le8/c;

    return-void
.end method


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lw7/i;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Le8/b;->R()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Le8/b;->R()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const v0, 0xffff

    if-gt p0, v0, :cond_2

    const/16 v0, -0x8000

    if-lt p0, v0, :cond_2

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    new-instance v0, Lw7/n;

    const-string v1, "Lossy conversion from "

    const-string v2, " to short; at path "

    invoke-static {p0, v1, v2}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Le8/b;->R()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_4

    const/16 v0, -0x80

    if-lt p0, v0, :cond_4

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_4
    new-instance v0, Lw7/n;

    const-string v1, "Lossy conversion from "

    const-string v2, " to byte; at path "

    invoke-static {p0, v1, v2}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_2
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Le8/b;->K()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_4
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1}, Le8/b;->b()V

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_9

    const/4 v4, 0x6

    if-eq v3, v4, :cond_9

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    invoke-virtual {p1}, Le8/b;->K()Z

    move-result v0

    goto :goto_6

    :cond_8
    new-instance p0, Lw7/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid bitset value type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le8/b;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {p1}, Le8/b;->R()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_6

    :cond_a
    const/4 v3, 0x1

    if-ne v0, v3, :cond_c

    move v0, v3

    :goto_6
    if-eqz v0, :cond_b

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    goto :goto_5

    :cond_c
    new-instance p0, Lw7/n;

    const-string v1, "Invalid bitset value "

    const-string v2, ", expected 0 or 1; at path "

    invoke-static {v0, v1, v2}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {p1}, Le8/b;->k()V

    return-object p0

    :pswitch_5
    instance-of p0, p1, Lz7/g;

    const/4 v0, 0x2

    if-eqz p0, :cond_f

    check-cast p1, Lz7/g;

    invoke-virtual {p1}, Lz7/g;->Z()I

    move-result p0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_e

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/16 v0, 0xa

    if-eq p0, v0, :cond_e

    invoke-virtual {p1}, Lz7/g;->l0()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lz7/g;->f0()V

    goto/16 :goto_e

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " when reading a JsonElement."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    if-eq v1, v0, :cond_10

    move-object v1, v2

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Le8/b;->c()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    goto :goto_7

    :cond_11
    invoke-virtual {p1}, Le8/b;->b()V

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    :goto_7
    if-nez v1, :cond_12

    invoke-static {p1, p0}, Lw7/i;->a(Le8/b;I)Lcom/google/gson/JsonElement;

    move-result-object p0

    goto/16 :goto_e

    :cond_12
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_13
    :goto_8
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v3

    if-eqz v3, :cond_1a

    instance-of v3, v1, Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Le8/b;->T()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_14
    move-object v3, v2

    :goto_9
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v4

    invoke-static {v4}, Landroidx/fragment/app/t1;->d(I)I

    move-result v5

    if-eqz v5, :cond_16

    if-eq v5, v0, :cond_15

    move-object v5, v2

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Le8/b;->c()V

    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Le8/b;->b()V

    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    :goto_a
    if-eqz v5, :cond_17

    const/4 v6, 0x1

    goto :goto_b

    :cond_17
    const/4 v6, 0x0

    :goto_b
    if-nez v5, :cond_18

    invoke-static {p1, v4}, Lw7/i;->a(Le8/b;I)Lcom/google/gson/JsonElement;

    move-result-object v5

    :cond_18
    instance-of v4, v1, Lcom/google/gson/JsonArray;

    if-eqz v4, :cond_19

    move-object v3, v1

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_c

    :cond_19
    move-object v4, v1

    check-cast v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :goto_c
    if-eqz v6, :cond_13

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v5

    goto :goto_8

    :cond_1a
    instance-of v3, v1, Lcom/google/gson/JsonArray;

    if-eqz v3, :cond_1b

    invoke-virtual {p1}, Le8/b;->k()V

    goto :goto_d

    :cond_1b
    invoke-virtual {p1}, Le8/b;->m()V

    :goto_d
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object p0, v1

    :goto_e
    return-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    goto :goto_8

    :pswitch_6
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1d

    invoke-virtual {p1}, Le8/b;->V()V

    goto :goto_11

    :cond_1d
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/StringTokenizer;

    const-string v0, "_"

    invoke-direct {p1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_1e
    move-object p0, v1

    :goto_f
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1f
    move-object v0, v1

    :goto_10
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :cond_20
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_21
    if-nez v1, :cond_22

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_22
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    :goto_11
    return-object v1

    :pswitch_7
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_23

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto/16 :goto_13

    :cond_23
    invoke-virtual {p1}, Le8/b;->c()V

    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_24
    :goto_12
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2a

    invoke-virtual {p1}, Le8/b;->T()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->R()I

    move-result v0

    const-string v7, "year"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    move v1, v0

    goto :goto_12

    :cond_25
    const-string v7, "month"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    move v2, v0

    goto :goto_12

    :cond_26
    const-string v7, "dayOfMonth"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    move v3, v0

    goto :goto_12

    :cond_27
    const-string v7, "hourOfDay"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    move v4, v0

    goto :goto_12

    :cond_28
    const-string v7, "minute"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    move v5, v0

    goto :goto_12

    :cond_29
    const-string v7, "second"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    move v6, v0

    goto :goto_12

    :cond_2a
    invoke-virtual {p1}, Le8/b;->m()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    move-object p0, v0

    :goto_13
    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    :try_start_3
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception v0

    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as Currency; at path "

    invoke-static {v2, p0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_9
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_2b

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_14

    :cond_2b
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    :try_start_4
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_14
    return-object p0

    :catch_4
    move-exception v0

    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as UUID; at path "

    invoke-static {v2, p0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_a
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_2c

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_15

    :cond_2c
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    :goto_15
    return-object p0

    :pswitch_b
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2d

    invoke-virtual {p1}, Le8/b;->V()V

    goto :goto_16

    :cond_2d
    :try_start_5
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_16

    :cond_2e
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_16
    return-object v1

    :catch_5
    move-exception v0

    move-object p0, v0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_c
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2f

    invoke-virtual {p1}, Le8/b;->V()V

    goto :goto_17

    :cond_2f
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_17

    :cond_30
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_17
    return-object v1

    :pswitch_d
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_31

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_18

    :cond_31
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_18
    return-object p0

    :pswitch_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_f
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_32

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_19

    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_19
    return-object p0

    :pswitch_10
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_33

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1a

    :cond_33
    new-instance p0, Ly7/i;

    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ly7/i;-><init>(Ljava/lang/String;)V

    :goto_1a
    return-object p0

    :pswitch_11
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_34

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1b

    :cond_34
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    :try_start_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-object p0, v0

    :goto_1b
    return-object p0

    :catch_6
    move-exception v0

    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as BigInteger; at path "

    invoke-static {v2, p0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_12
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_35

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1c

    :cond_35
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    :try_start_7
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-object p0, v0

    :goto_1c
    return-object p0

    :catch_7
    move-exception v0

    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as BigDecimal; at path "

    invoke-static {v2, p0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_13
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_36

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1d

    :cond_36
    const/16 v0, 0x8

    if-ne p0, v0, :cond_37

    invoke-virtual {p1}, Le8/b;->K()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_37
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0

    :pswitch_14
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1e

    :cond_38
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_39
    new-instance v0, Lw7/n;

    const-string v1, "Expecting character, got: "

    const-string v2, "; at "

    invoke-static {v1, p0, v2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3a

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1f

    :cond_3a
    invoke-virtual {p1}, Le8/b;->P()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1f
    return-object p0

    :pswitch_16
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3b

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_20

    :cond_3b
    invoke-virtual {p1}, Le8/b;->P()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_20
    return-object p0

    :pswitch_17
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3c

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_21

    :cond_3c
    :try_start_8
    invoke-virtual {p1}, Le8/b;->S()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_21
    return-object p0

    :catch_8
    move-exception v0

    move-object p0, v0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_18
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Le8/b;->b()V

    :goto_22
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v0

    if-eqz v0, :cond_3d

    :try_start_9
    invoke-virtual {p1}, Le8/b;->R()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_22

    :catch_9
    move-exception v0

    move-object p0, v0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3d
    invoke-virtual {p1}, Le8/b;->k()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_23
    if-ge v1, p1, :cond_3e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3e
    return-object v0

    :pswitch_19
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3f

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_24

    :cond_3f
    invoke-virtual {p1}, Le8/b;->S()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_24
    return-object p0

    :pswitch_1a
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_40

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_25

    :cond_40
    invoke-virtual {p1}, Le8/b;->P()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_25
    return-object p0

    :pswitch_1b
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_41

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_26

    :cond_41
    invoke-virtual {p1}, Le8/b;->P()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_26
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 3

    iget p0, p0, Lw7/i;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    :goto_1
    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    :goto_2
    return-void

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_3

    const-string p0, "null"

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Le8/c;->K(Ljava/lang/Boolean;)V

    return-void

    :pswitch_4
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p1}, Le8/c;->c()V

    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Le8/c;->J(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Le8/c;->k()V

    return-void

    :pswitch_5
    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-static {p1, p2}, Lw7/i;->b(Le8/c;Lcom/google/gson/JsonElement;)V

    return-void

    :pswitch_6
    check-cast p2, Ljava/util/Locale;

    if-nez p2, :cond_5

    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_7
    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Le8/c;->d()V

    const-string p0, "year"

    invoke-virtual {p1, p0}, Le8/c;->n(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    const-string p0, "month"

    invoke-virtual {p1, p0}, Le8/c;->n(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    const-string p0, "dayOfMonth"

    invoke-virtual {p1, p0}, Le8/c;->n(Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    const-string p0, "hourOfDay"

    invoke-virtual {p1, p0}, Le8/c;->n(Ljava/lang/String;)V

    const/16 p0, 0xb

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    const-string p0, "minute"

    invoke-virtual {p1, p0}, Le8/c;->n(Ljava/lang/String;)V

    const/16 p0, 0xc

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    const-string p0, "second"

    invoke-virtual {p1, p0}, Le8/c;->n(Ljava/lang/String;)V

    const/16 p0, 0xd

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    invoke-virtual {p1}, Le8/c;->m()V

    :goto_6
    return-void

    :pswitch_8
    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_9
    check-cast p2, Ljava/util/UUID;

    if-nez p2, :cond_7

    const/4 p0, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p2, Ljava/net/InetAddress;

    if-nez p2, :cond_8

    const/4 p0, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    :goto_8
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_b
    check-cast p2, Ljava/net/URI;

    if-nez p2, :cond_9

    const/4 p0, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_c
    check-cast p2, Ljava/net/URL;

    if-nez p2, :cond_a

    const/4 p0, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    :goto_a
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_d
    check-cast p2, Ljava/lang/StringBuffer;

    if-nez p2, :cond_b

    const/4 p0, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_e
    check-cast p2, Ljava/lang/Class;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Attempted to serialize java.lang.Class: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ". Forgot to register a type adapter?"

    invoke-static {p2, p1, v0}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_f
    check-cast p2, Ljava/lang/StringBuilder;

    if-nez p2, :cond_c

    const/4 p0, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_10
    check-cast p2, Ly7/i;

    invoke-virtual {p1, p2}, Le8/c;->P(Ljava/lang/Number;)V

    return-void

    :pswitch_11
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Le8/c;->P(Ljava/lang/Number;)V

    return-void

    :pswitch_12
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Le8/c;->P(Ljava/lang/Number;)V

    return-void

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_14
    check-cast p2, Ljava/lang/Character;

    if-nez p2, :cond_d

    const/4 p0, 0x0

    goto :goto_d

    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_d
    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    return-void

    :pswitch_15
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_e

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_e

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le8/c;->C(D)V

    :goto_e
    return-void

    :pswitch_16
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_f

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_10

    :cond_f
    instance-of p0, p2, Ljava/lang/Float;

    if-eqz p0, :cond_10

    goto :goto_f

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_f
    invoke-virtual {p1, p2}, Le8/c;->P(Ljava/lang/Number;)V

    :goto_10
    return-void

    :pswitch_17
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_11

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_11

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le8/c;->J(J)V

    :goto_11
    return-void

    :pswitch_18
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p1}, Le8/c;->c()V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p0, :cond_12

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Le8/c;->J(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_12
    invoke-virtual {p1}, Le8/c;->k()V

    return-void

    :pswitch_19
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_13

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_13

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_1a
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_14

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_15

    :cond_14
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lw7/l;->a(D)V

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_15

    goto :goto_14

    :cond_15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_14
    invoke-virtual {p1, p2}, Le8/c;->P(Ljava/lang/Number;)V

    :goto_15
    return-void

    :pswitch_1b
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_16

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_16

    :cond_16
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lw7/l;->a(D)V

    invoke-virtual {p1, v0, v1}, Le8/c;->C(D)V

    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
