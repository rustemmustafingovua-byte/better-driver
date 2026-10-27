.class public final Lt2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r2;


# instance fields
.field public final l:Ljava/lang/Object;

.field public final m:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/r;->l:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt2/r;->m:Z

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt2/r;->l:Ljava/lang/Object;

    return-object p0
.end method
