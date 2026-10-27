.class public final Lg6/e0;
.super Lg6/f1;
.source "SourceFile"


# static fields
.field public static final o:Lg6/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg6/e0;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/e0;->o:Lg6/e0;

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ls5/n;->y:Ls5/n;

    invoke-virtual {p1, p0}, Ls5/k;->q0(Ls5/n;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p2, Ls5/n;->v:Ls5/n;

    if-ne p0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
