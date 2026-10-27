.class public final Lmb/a;
.super La/a;
.source "SourceFile"


# static fields
.field public static final k:[Ljava/lang/Class;


# instance fields
.field public final f:Lmb/o6;

.field public final g:[Ljava/lang/String;

.field public final h:I

.field public i:Ljava/lang/String;

.field public j:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lmb/a;->k:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, La/a;-><init>(I)V

    new-instance v0, Lmb/o6;

    invoke-direct {v0}, Lmb/o6;-><init>()V

    iput-object v0, p0, Lmb/a;->f:Lmb/o6;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmb/a;->g:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lmb/a;->h:I

    const-string v0, "SC"

    iput-object v0, p0, Lmb/a;->i:Ljava/lang/String;

    sget-object v0, Lmb/a;->k:[Ljava/lang/Class;

    iput-object v0, p0, Lmb/a;->j:[Ljava/lang/Class;

    return-void
.end method
