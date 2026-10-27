.class public final Lad/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/q0;


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/q0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/r0;->Companion:Lad/q0;

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 2

    iget-wide v0, p0, Lad/r0;->a:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    iget p0, p0, Lad/r0;->d:I

    const/16 p1, 0xa

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
