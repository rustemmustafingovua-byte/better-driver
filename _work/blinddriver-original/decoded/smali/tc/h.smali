.class public abstract Ltc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lt8/j;

    const-string v1, "AIR"

    const-string v2, "\u041f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0430 \u0442\u0440\u0438\u0432\u043e\u0433\u0430"

    invoke-direct {v0, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lt8/j;

    const-string v2, "ARTILLERY"

    const-string v3, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0430\u0440\u0442\u043e\u0431\u0441\u0442\u0440\u0456\u043b\u0443"

    invoke-direct {v1, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lt8/j;

    const-string v3, "URBAN_FIGHTS"

    const-string v4, "\u0412\u0443\u043b\u0438\u0447\u043d\u0456 \u0431\u043e\u0457"

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lt8/j;

    const-string v4, "CHEMICAL"

    const-string v5, "\u0425\u0456\u043c\u0456\u0447\u043d\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    invoke-direct {v3, v4, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lt8/j;

    const-string v5, "NUCLEAR"

    const-string v6, "\u0420\u0430\u0434\u0456\u0430\u0446\u0456\u0439\u043d\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430"

    invoke-direct {v4, v5, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lt8/j;

    const-string v6, "INFO"

    const-string v7, "\u0406\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u044f"

    invoke-direct {v5, v6, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v5}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ltc/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2019

    const/16 v2, 0x27

    invoke-static {p0, v1, v2}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2bc

    invoke-static {p0, v1, v2}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x60

    invoke-static {p0, v1, v2}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u043c. "

    invoke-static {p0, v1, v0}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u043c\u0456\u0441\u0442\u043e "

    invoke-static {p0, v1, v0}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
