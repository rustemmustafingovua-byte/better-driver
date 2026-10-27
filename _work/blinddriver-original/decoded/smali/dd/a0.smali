.class public final Ldd/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/z;


# instance fields
.field public final a:F

.field public final b:F

.field public c:Z

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/a0;->Companion:Ldd/z;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldd/a0;->a:F

    iput p2, p0, Ldd/a0;->b:F

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ldd/a0;->d:J

    return-void
.end method
