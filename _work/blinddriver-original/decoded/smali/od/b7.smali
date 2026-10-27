.class public final Lod/b7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "uk-UA"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "forLanguageTag(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lod/b7;->a:Ljava/util/Locale;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dd.MM.yyyy HH:mm"

    invoke-static {v1, v0}, Lod/b7;->b(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;
    .locals 3

    sget-object v0, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "dd.MM.yyyy HH:mm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcd/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "MM/dd/yyyy h:mm a"

    goto :goto_0

    :cond_2
    move-object p0, v1

    goto :goto_0

    :sswitch_1
    const-string v1, "dd.MM.yyyy HH:mm:ss"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcd/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "MM/dd/yyyy h:mm:ss a"

    goto :goto_0

    :sswitch_2
    const-string v1, "HH:mm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcd/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "h:mm a"

    goto :goto_0

    :sswitch_3
    const-string v1, "d MMMM yyyy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "MMMM d, yyyy"

    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :cond_6
    sget-object v0, Lod/b7;->a:Ljava/util/Locale;

    :goto_1
    invoke-direct {v1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x78b659c -> :sswitch_3
        0x4183e5a -> :sswitch_2
        0x534c3940 -> :sswitch_1
        0x7b7cb09a -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "HH:mm"

    invoke-static {v1, v0}, Lod/b7;->b(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
