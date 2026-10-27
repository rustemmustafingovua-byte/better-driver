.class public abstract Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb3/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lb3/d;-><init>(FF)V

    sput-object v0, Lo1/c;->a:Lb3/d;

    return-void
.end method
