.class final Le3/x;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# static fields
.field public static final a:Le3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le3/x;

    invoke-direct {v0}, Le3/x;-><init>()V

    sput-object v0, Le3/x;->a:Le3/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 0

    new-instance p0, Le3/y;

    invoke-direct {p0}, Lf1/q;-><init>()V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic f(Lf1/q;)V
    .locals 0

    check-cast p1, Le3/y;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x274fed84

    return p0
.end method
