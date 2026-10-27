.class public final Lad/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/v0;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/v0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/w0;->Companion:Lad/v0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lad/w0;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lad/w0;->b:Ljava/lang/String;

    return-void
.end method
