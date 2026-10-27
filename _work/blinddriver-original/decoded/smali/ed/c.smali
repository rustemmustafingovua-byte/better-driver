.class public abstract Led/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "\u041f\u0440\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d: \u0432\u0438\u0440\u043e\u0431\u043d\u0438\u043a, \u043c\u043e\u0434\u0435\u043b\u044c, \u0432\u0435\u0440\u0441\u0456\u044f Android, \u043f\u0440\u043e\u0446\u0435\u0441\u043e\u0440, \u043f\u0430\u043c\'\u044f\u0442\u044c, \u0435\u043a\u0440\u0430\u043d, \u0431\u0430\u0442\u0430\u0440\u0435\u044f, \u043f\u043e\u0432\u043d\u0438\u0439 \u043f\u0435\u0440\u0435\u043b\u0456\u043a \u0434\u0430\u0442\u0447\u0438\u043a\u0456\u0432 \u0456\u0437 \u0445\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0430\u043c\u0438, \u043c\u043e\u0436\u043b\u0438\u0432\u043e\u0441\u0442\u0456 GNSS, \u0442\u0438\u043f \u043c\u0435\u0440\u0435\u0436\u0456 \u0439 \u043a\u043e\u0434 \u043e\u043f\u0435\u0440\u0430\u0442\u043e\u0440\u0430 (MCC/MNC), \u0434\u043e\u0437\u0432\u043e\u043b\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v6, "\u041d\u0415 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u044c\u0441\u044f: \u043d\u043e\u043c\u0435\u0440 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0443, IMEI, \u0441\u0435\u0440\u0456\u0439\u043d\u0438\u0439 \u043d\u043e\u043c\u0435\u0440, Android ID, \u043e\u0431\u043b\u0456\u043a\u043e\u0432\u0456 \u0437\u0430\u043f\u0438\u0441\u0438, \u0441\u043f\u0438\u0441\u043e\u043a \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0456\u0432, \u043d\u0430\u0437\u0432\u0438 Wi-Fi \u043c\u0435\u0440\u0435\u0436, \u043a\u043b\u044e\u0447\u0456 \u0439 \u043f\u0430\u0440\u043e\u043b\u0456."

    const-string v0, "\u0424\u0430\u0439\u043b\u0438 \u043b\u043e\u0433\u0456\u0432 \u043f\u043e\u0457\u0437\u0434\u043e\u043a: \u043f\u043e\u0437\u0438\u0446\u0456\u0457 GPS \u0456 \u043c\u0435\u0440\u0435\u0436\u0456, \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438, \u0434\u0430\u0442\u0447\u0438\u043a\u0438 \u0440\u0443\u0445\u0443, \u043f\u043e\u0434\u0456\u0457 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443. \u042f\u043a\u0449\u043e \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e \u043e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f, \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0432 \u0440\u0430\u0434\u0456\u0443\u0441\u0456 N \u043c \u0432\u0456\u0434 \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0439 \u043a\u0456\u043d\u0446\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0442\u0430 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 \u0432 \u043d\u043e\u0442\u0430\u0442\u043a\u0430\u0445 \u0432\u0438\u0434\u0430\u043b\u044f\u044e\u0442\u044c\u0441\u044f."

    const-string v1, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u0437\u0430 \u044f\u043a\u0438\u043c\u0438 \u0432\u0435\u043b\u043e\u0441\u044f: \u043b\u0456\u043d\u0456\u044f \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 (\u0431\u0435\u0437 \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0439 \u043a\u0456\u043d\u0446\u044f \u043f\u0440\u0438 \u043e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u0456), \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456, \u0437\u0430\u0442\u043e\u0440\u0438, \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438."

    const-string v2, "\u0427\u0430\u0441 \u0437\u0430\u043f\u0438\u0441\u0443 (\u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0434\u043b\u044f \u0440\u043e\u0437\u0431\u043e\u0440\u0443) \u0456 \u0432\u0430\u0448 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440."

    const-string v3, "\u042f\u043a\u0449\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0437\u0430 \u043e\u0441\u0442\u0430\u043d\u043d\u0456 14 \u0434\u043d\u0456\u0432 \u0430\u0432\u0430\u0440\u0456\u0439\u043d\u043e \u0437\u0430\u043a\u0440\u0438\u0432\u0430\u0432\u0441\u044f: \u0442\u0435\u0445\u043d\u0456\u0447\u043d\u0438\u0439 \u043e\u043f\u0438\u0441 \u0437\u0431\u043e\u044e (\u0442\u0438\u043f \u043f\u043e\u043c\u0438\u043b\u043a\u0438 \u0439 \u043c\u0456\u0441\u0446\u0435 \u0432 \u043a\u043e\u0434\u0456 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443), \u0431\u0435\u0437 \u0432\u0430\u0448\u0438\u0445 \u0434\u0430\u043d\u0438\u0445."

    const-string v4, "\u041f\u0440\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a: \u0432\u0435\u0440\u0441\u0456\u044f, \u0442\u0438\u043f \u0437\u0431\u0456\u0440\u043a\u0438, \u044f\u043a\u0456 \u043f\u043e\u0440\u043e\u0433\u0438 \u0437\u043c\u0456\u043d\u0435\u043d\u043e, \u0447\u0438 \u0432\u0432\u0435\u0434\u0435\u043d\u043e \u0432\u043b\u0430\u0441\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 Mapbox (\u0441\u0430\u043c \u043a\u043b\u044e\u0447 \u043d\u0435 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u044c\u0441\u044f)."

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Led/c;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7f

    if-eq v3, v4, :cond_5

    const/16 v4, 0x80

    if-gt v4, v3, :cond_1

    const/16 v4, 0xa0

    if-ge v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x200e

    if-gt v4, v3, :cond_2

    const/16 v4, 0x2010

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x2028

    if-gt v4, v3, :cond_3

    const/16 v4, 0x202f

    if-ge v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x2066

    if-gt v4, v3, :cond_4

    const/16 v4, 0x206a

    if-ge v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const v4, 0xfeff

    if-eq v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x78

    invoke-static {v0, p0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
