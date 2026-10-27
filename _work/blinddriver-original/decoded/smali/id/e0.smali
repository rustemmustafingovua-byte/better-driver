.class public final Lid/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lid/f0;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_link"

    invoke-static {p0, v0}, Lr9/k;->n0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p0, Lid/f0;->v:Lid/f0;

    return-object p0

    :sswitch_1
    const-string v0, "unclassified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object p0, Lid/f0;->s:Lid/f0;

    return-object p0

    :sswitch_2
    const-string v0, "residential"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "trunk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lid/f0;->o:Lid/f0;

    return-object p0

    :sswitch_4
    const-string v0, "track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :sswitch_5
    const-string v0, "minor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lid/f0;->t:Lid/f0;

    return-object p0

    :sswitch_6
    const-string v0, "path"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lid/f0;->w:Lid/f0;

    return-object p0

    :sswitch_7
    const-string v0, "motorway"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    sget-object p0, Lid/f0;->n:Lid/f0;

    return-object p0

    :sswitch_8
    const-string v0, "primary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    sget-object p0, Lid/f0;->p:Lid/f0;

    return-object p0

    :sswitch_9
    const-string v0, "secondary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    sget-object p0, Lid/f0;->q:Lid/f0;

    return-object p0

    :sswitch_a
    const-string v0, "tertiary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    sget-object p0, Lid/f0;->r:Lid/f0;

    return-object p0

    :sswitch_b
    const-string v0, "living_street"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    sget-object p0, Lid/f0;->u:Lid/f0;

    return-object p0

    :cond_b
    :goto_1
    sget-object p0, Lid/f0;->x:Lid/f0;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x780c95a7 -> :sswitch_b
        -0x4605f7ae -> :sswitch_a
        -0x30bb8e8c -> :sswitch_9
        -0x12c2f1fe -> :sswitch_8
        -0x9083da6 -> :sswitch_7
        0x346425 -> :sswitch_6
        0x63167b5 -> :sswitch_5
        0x697f14b -> :sswitch_4
        0x6983db4 -> :sswitch_3
        0x41778704 -> :sswitch_2
        0x6dae7d6c -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch
.end method
