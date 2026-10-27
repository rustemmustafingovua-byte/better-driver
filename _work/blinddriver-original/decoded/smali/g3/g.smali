.class public final Lg3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lg3/g;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lg3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg3/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg3/g;->c:Lg3/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg3/h;->q:Ll7/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ll7/a;->w(Lg3/g;Ljava/lang/Thread;)V

    return-void
.end method
