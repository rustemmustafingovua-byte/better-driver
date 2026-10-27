.class public final Landroidx/lifecycle/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v;


# static fields
.field public static final s:Landroidx/lifecycle/h0;


# instance fields
.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Landroid/os/Handler;

.field public final q:Landroidx/lifecycle/x;

.field public final r:Landroidx/lifecycle/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/h0;

    invoke-direct {v0}, Landroidx/lifecycle/h0;-><init>()V

    sput-object v0, Landroidx/lifecycle/h0;->s:Landroidx/lifecycle/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/h0;->n:Z

    iput-boolean v0, p0, Landroidx/lifecycle/h0;->o:Z

    new-instance v1, Landroidx/lifecycle/x;

    invoke-direct {v1, p0, v0}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v1, p0, Landroidx/lifecycle/h0;->q:Landroidx/lifecycle/x;

    new-instance v0, Landroidx/lifecycle/f0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/h0;->r:Landroidx/lifecycle/f0;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/q;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/h0;->q:Landroidx/lifecycle/x;

    return-object p0
.end method
