.class public final enum Lw7/q;
.super Lw7/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "LAZILY_PARSED_NUMBER"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Le8/b;)Ljava/lang/Number;
    .locals 0

    new-instance p0, Ly7/i;

    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ly7/i;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
