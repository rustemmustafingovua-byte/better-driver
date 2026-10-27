.class public final La3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/o;


# static fields
.field public static final a:La3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La3/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La3/n;->a:La3/n;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    sget p0, Lm1/p;->h:I

    sget-wide v0, Lm1/p;->g:J

    return-wide v0
.end method

.method public final b()Lm1/m;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()F
    .locals 0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method
