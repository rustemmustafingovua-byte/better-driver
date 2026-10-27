.class public final Lg1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg1/d;

.field public static final b:Lg1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg1/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg1/d;-><init>(I)V

    sput-object v0, Lg1/k;->a:Lg1/d;

    new-instance v0, Lg1/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg1/d;-><init>(I)V

    sput-object v0, Lg1/k;->b:Lg1/d;

    return-void
.end method
