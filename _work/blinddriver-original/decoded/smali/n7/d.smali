.class public abstract Ln7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld7/c;

.field public static final b:[Ld7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld7/c;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ld7/c;-><init>(Ljava/lang/String;J)V

    sput-object v0, Ln7/d;->a:Ld7/c;

    filled-new-array {v0}, [Ld7/c;

    move-result-object v0

    sput-object v0, Ln7/d;->b:[Ld7/c;

    return-void
.end method
