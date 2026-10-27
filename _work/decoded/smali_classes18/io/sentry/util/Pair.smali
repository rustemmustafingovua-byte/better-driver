.class public final Lio/sentry/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lio/sentry/util/Pair;, "Lio/sentry/util/Pair<TA;TB;>;"
    .local p1, "first":Ljava/lang/Object;, "TA;"
    .local p2, "second":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/sentry/util/Pair;->first:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lio/sentry/util/Pair;->second:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lio/sentry/util/Pair;, "Lio/sentry/util/Pair<TA;TB;>;"
    iget-object v0, p0, Lio/sentry/util/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lio/sentry/util/Pair;, "Lio/sentry/util/Pair<TA;TB;>;"
    iget-object v0, p0, Lio/sentry/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method
