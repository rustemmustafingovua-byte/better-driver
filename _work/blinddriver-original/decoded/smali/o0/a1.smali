.class public final synthetic Lo0/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lo0/a1;->l:I

    iput-object p1, p0, Lo0/a1;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lo0/a1;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lo0/a1;->m:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lua/nav/geocoding/Place;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p1, p1, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u2019"

    const-string v1, "\'"

    invoke-static {p1, v0, v1}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "`"

    invoke-static {p1, v0, v1}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :goto_1
    return-object p0

    :pswitch_0
    check-cast p1, Lm2/x;

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->L:Lm2/w;

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    check-cast p1, Lm2/x;

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->a:Lm2/w;

    invoke-static {p0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v1

    :pswitch_2
    check-cast p1, Lm2/x;

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->d:Lm2/w;

    sget-object v2, Lm2/v;->a:[Lp9/d;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
