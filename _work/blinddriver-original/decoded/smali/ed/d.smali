.class public final Led/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c. \u041b\u043e\u0433 \u043b\u0438\u0448\u0438\u0432\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456, \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435."

    return-object p0

    :sswitch_1
    const-string v0, "not_configured"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "\u0421\u0435\u0440\u0432\u0435\u0440 \u043f\u0440\u0438\u0439\u043c\u0430\u043d\u043d\u044f \u043b\u043e\u0433\u0456\u0432 \u0449\u0435 \u043d\u0435 \u043d\u0430\u043b\u0430\u0448\u0442\u043e\u0432\u0430\u043d\u043e \u0432 \u0446\u0456\u0439 \u0437\u0431\u0456\u0440\u0446\u0456. \u041c\u043e\u0436\u043d\u0430 \u043f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f \u0444\u0430\u0439\u043b\u043e\u043c \u0447\u0435\u0440\u0435\u0437 \u0441\u0438\u0441\u0442\u0435\u043c\u0443."

    return-object p0

    :sswitch_2
    const-string v0, "total_too_big"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :sswitch_3
    const-string v0, "ratio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :sswitch_4
    const-string v0, "quota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_5
    const-string v0, "rate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "\u0417\u0430\u0431\u0430\u0433\u0430\u0442\u043e \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u044c \u0437\u0430 \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u0447\u0430\u0441. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435 (\u043b\u0456\u043c\u0456\u0442: 10 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u044c \u043d\u0430 \u0434\u043e\u0431\u0443)."

    return-object p0

    :sswitch_6
    const-string v0, "auth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "\u0421\u0435\u0440\u0432\u0435\u0440 \u043d\u0435 \u043f\u0440\u0438\u0439\u043d\u044f\u0432 \u043f\u0456\u0434\u043f\u0438\u0441 \u0437\u0430\u043f\u0438\u0442\u0443. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437 (\u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0437\u0430\u0440\u0435\u0454\u0441\u0442\u0440\u0443\u0454\u0442\u044c\u0441\u044f \u043d\u0430\u043d\u043e\u0432\u043e)."

    return-object p0

    :sswitch_7
    const-string v0, "file_too_big"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :sswitch_8
    const-string v0, "register"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u0440\u0435\u0454\u0441\u0442\u0440\u0443\u0432\u0430\u0442\u0438 \u0446\u0435\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435."

    return-object p0

    :sswitch_9
    const-string v0, "too_big"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "\u0424\u0430\u0439\u043b\u0438 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0456. \u041e\u0431\u0435\u0440\u0456\u0442\u044c \u043c\u0435\u043d\u0448\u0435 \u043b\u043e\u0433\u0456\u0432 \u0430\u0431\u043e \u043c\u0435\u043d\u0448\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434."

    return-object p0

    :sswitch_a
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    const-string v0, "\u0421\u0435\u0440\u0432\u0435\u0440 \u0432\u0456\u0434\u0445\u0438\u043b\u0438\u0432 \u0444\u0430\u0439\u043b\u0438 (\u043a\u043e\u0434: "

    const-string v1, "). \u042f\u043a\u0449\u043e \u0446\u0435 \u043f\u043e\u0432\u0442\u043e\u0440\u044e\u0454\u0442\u044c\u0441\u044f, \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u0442\u0435 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430."

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "\u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u043d\u0435\u043c\u0430\u0454 \u043c\u0456\u0441\u0446\u044f. \u041f\u043e\u0432\u0456\u0434\u043e\u043c\u0442\u0435 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u0456\u043d\u0448\u0438\u043c \u0441\u043f\u043e\u0441\u043e\u0431\u043e\u043c."

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x704fbd85 -> :sswitch_a
        -0x43fa5c6b -> :sswitch_9
        -0x2923d15d -> :sswitch_8
        -0x6d9fc2e -> :sswitch_7
        0x2ddda8 -> :sswitch_6
        0x354ce0 -> :sswitch_5
        0x66f3e78 -> :sswitch_4
        0x674500b -> :sswitch_3
        0x464ea19a -> :sswitch_2
        0x6718b32a -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch
.end method
