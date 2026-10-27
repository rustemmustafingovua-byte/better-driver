.class public final Lg/b;
.super Lg/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    iget p0, p0, Lg/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    const-string p0, "input"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "putExtra(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    check-cast p2, [Ljava/lang/String;

    const-string p0, "input"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "putExtra(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Ljava/lang/Object;)Lb0/l1;
    .locals 3

    iget p0, p0, Lg/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    const-string p0, "input"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lb0/l1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 p2, 0xe

    invoke-direct {p0, p2, p1}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, [Ljava/lang/String;

    const-string p0, "input"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    if-nez p0, :cond_1

    new-instance p0, Lb0/l1;

    sget-object p1, Lu8/s;->l:Lu8/s;

    const/16 p2, 0xe

    invoke-direct {p0, p2, p1}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p0, :cond_3

    aget-object v2, p2, v1

    invoke-static {p1, v2}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    array-length p0, p2

    invoke-static {p0}, Lu8/v;->J(I)I

    move-result p0

    const/16 p1, 0x10

    if-ge p0, p1, :cond_4

    move p0, p1

    :cond_4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length p0, p2

    :goto_2
    if-ge v0, p0, :cond_5

    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-instance p0, Lb0/l1;

    const/16 p2, 0xe

    invoke-direct {p0, p2, p1}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lg/b;->a:I

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_3

    const/4 p0, -0x1

    if-eq p2, p0, :cond_0

    goto :goto_2

    :cond_0
    const-string p0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    array-length p2, p0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget v1, p0, v0

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p0

    :pswitch_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_4

    goto :goto_6

    :cond_4
    if-nez p1, :cond_5

    goto :goto_6

    :cond_5
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_9

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_8

    aget v3, p1, v2

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-static {p0}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Lu8/m;->G0(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lu8/v;->M(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    goto :goto_7

    :cond_9
    :goto_6
    sget-object p0, Lu8/s;->l:Lu8/s;

    :goto_7
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
