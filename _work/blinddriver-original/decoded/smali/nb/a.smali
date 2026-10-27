.class public final Lnb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnb/a;

.field public static final b:Lnb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnb/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnb/a;->a:Lnb/a;

    sput-object v0, Lnb/a;->b:Lnb/a;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    rem-int/lit8 p1, p1, 0x2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Mod2 Boundary Node Rule"

    return-object p0
.end method
