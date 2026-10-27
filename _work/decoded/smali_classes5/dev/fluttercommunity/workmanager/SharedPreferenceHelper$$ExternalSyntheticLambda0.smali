.class public final synthetic Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda0;->f$0:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda0;->f$0:Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;

    check-cast p1, Landroid/content/SharedPreferences;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->$r8$lambda$Xb2u2kTVKal_jl6BJ9f2jgLXjSQ(Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
