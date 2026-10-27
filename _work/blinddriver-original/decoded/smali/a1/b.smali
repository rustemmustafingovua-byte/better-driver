.class public final synthetic La1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La1/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lha/m0;)V
    .locals 0

    .line 2
    const/16 p1, 0x18

    iput p1, p0, La1/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()Ljava/lang/Object;
    .locals 7

    new-instance p0, Ljava/util/HashMap;

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    sget-object v0, Lcd/g;->a:Lt8/o;

    const-string v0, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u0443 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456"

    const-string v1, "Alert in your area"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u043f\u043e\u0440\u0443\u0447"

    const-string v1, "Alert nearby"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0456\u0432\u0435\u043d\u044c: "

    const-string v1, "Level: "

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0447\u0435\u0440\u0432\u043e\u043d\u0438\u0439"

    const-string v1, "red"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "\u0436\u043e\u0432\u0442\u0438\u0439"

    const-string v3, "yellow"

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0435: "

    const-string v5, "Where: "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0449\u0435 \u0440\u0430\u0437"

    const-string v5, "again"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0437\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f"

    const-string v5, "stop guidance"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0437\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443"

    const-string v5, "stop log recording"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u0456 "

    const-string v5, " and "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0442\u0440\u0438\u0432\u0430\u0454! "

    const-string v5, "Guidance is running! "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0430\u0440\u0438\u0444\u0438 \u0439 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0437\'\u044f\u0432\u043b\u044f\u0442\u044c\u0441\u044f \u043f\u0456\u0437\u043d\u0456\u0448\u0435; \u043f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434 \u043f\u043e\u0447\u043d\u0435\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0442\u043e\u0434\u0456."

    const-string v5, "Plans and subscription will appear later; the trial period will start only then."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u0456 \u0431\u0435\u0437 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0434\u043b\u044f Waze \u0442\u0430 \u043a\u0430\u0440\u0442"

    const-string v5, " and without position sharing for Waze and maps"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ". \u0411\u0435\u0437 GPS \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0430\u0437\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u0437\u0434\u043e\u0432\u0436 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443; \u043d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433 \u2014 \u0443 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e."

    const-string v5, ". Without GPS basic guidance along the route works; new road-graph guidance is available during the trial period and with a subscription."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u043c\u0435\u0440\u0438, \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438, \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u0456 \u0442\u043e\u0447\u043a\u0438, \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043e\u0444\u043b\u0430\u0439\u043d-\u0440\u0435\u0436\u0438\u043c"

    const-string v5, "Cameras, traffic lights, via points, saved routes, offline mode"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u043b\u044f Waze \u0442\u0430 \u043a\u0430\u0440\u0442"

    const-string v5, " and position sharing for Waze and maps"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u2014 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c."

    const-string v5, " \u2014 without limits."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0442\u0438\u0441\u043d\u0443\u0432\u0448\u0438 \u043a\u043d\u043e\u043f\u043a\u0443 \u043d\u0438\u0436\u0447\u0435, \u0432\u0438 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u0435 \u043d\u0430 \u043d\u0430\u0448 \u0441\u0435\u0440\u0432\u0435\u0440 \u043c\u043e\u0434\u0435\u043b\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0439 \u043d\u0435\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0432\u0456\u0434\u0431\u0438\u0442\u043e\u043a \u0439\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e ID (\u0445\u0435\u0448 ANDROID_ID) \u2014 \u043b\u0438\u0448\u0435 \u0449\u043e\u0431 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u043b\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v5, "By tapping the button below you send our server the phone model and an irreversible fingerprint of its system ID (hash of ANDROID_ID) \u2014 only so the subscription can be restored after reinstalling the app."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u0426\u0435\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0443\u0436\u0435 \u043f\u0440\u0438\u0432\'\u044f\u0437\u0430\u043d\u043e \u0434\u043e Telegram."

    const-string v5, " This phone is already linked to Telegram."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u0438 \u0432 Telegram"

    const-string v5, "Continue in Telegram"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u0432 Telegram"

    const-string v5, "Subscribe in Telegram"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443"

    const-string v5, "Restore subscription"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u0442\u0440\u0438\u043c\u043a\u0430 \u0432 Telegram"

    const-string v5, "Support in Telegram"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0435\u0441\u0442\u043e\u0432\u0430 Pro-\u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 (\u0442\u0456\u043b\u044c\u043a\u0438 debug)"

    const-string v5, "Test Pro subscription (debug only)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447 \u043b\u0438\u0448\u0435 \u0434\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0438 \u0433\u0435\u0439\u0442\u0438\u043d\u0433\u0443 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430; \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u0433\u043e \u0442\u0430\u0440\u0438\u0444\u0443 \u0434\u0456\u044e\u0442\u044c, \u043b\u0438\u0448\u0435 \u043a\u043e\u043b\u0438 \u0442\u0430\u0440\u0438\u0444\u0438 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456."

    const-string v5, "A switch only for checking gating on the developer\'s phone; free plan limits apply only when plans are enabled on the server."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435\u043c\u0430\u0454 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0437 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c. \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u0456\u0437\u043d\u0456\u0448\u0435."

    const-string v5, "No connection to the server. Please try later."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u0437\u043d\u0430\u0439\u0448\u043b\u043e\u0441\u044f, \u0447\u0438\u043c \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 Telegram. \u0412\u0441\u0442\u0430\u043d\u043e\u0432\u0456\u0442\u044c Telegram \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    const-string v5, "Could not find an app to open Telegram. Install Telegram and try again."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430"

    const-string v5, "Subscription"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438"

    const-string v5, "Subscribe"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0437\u043d\u0456\u0448\u0435"

    const-string v5, "Later"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423\u0441\u0456 \u0444\u0443\u043d\u043a\u0446\u0456\u0457 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0456 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c"

    const-string v5, "All features are available without limits"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439"

    const-string v5, "Free"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ", \u043d\u0430\u0437\u0430\u0432\u0436\u0434\u0438"

    const-string v5, ", forever"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u0434\u043e "

    const-string v5, " until "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0434\u043d\u0456\u0432"

    const-string v5, "days"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0434\u0435\u043d\u044c"

    const-string v6, "day"

    invoke-virtual {p0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0434\u043d\u0456"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438"

    const-string v5, "You"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a"

    const-string v5, "Developer"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043f\u0438\u0441\u0430\u0442\u0438 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443"

    const-string v5, "Write to the developer"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e. \u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u043f\u0440\u0438\u0439\u0434\u0435 \u0441\u044e\u0434\u0438 \u0439 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f\u043c."

    const-string v5, "Sent. The reply will arrive here and as a notification."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438: \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    const-string v5, "Could not send: check your internet connection and try again."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u043c\u043e\u2026"

    const-string v5, "Sending\u2026"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438"

    const-string v5, "Send"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430"

    const-string v5, "Developer\'s reply"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u043a\u0440\u0438\u0442\u0438"

    const-string v5, "Close"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u043d\u0430 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0438\u0439 \u043b\u043e\u0433 \u043f\u0440\u0438\u0439\u0434\u0435 \u0441\u044e\u0434\u0438 \u0439 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f\u043c. \u041c\u043e\u0436\u043d\u0430 \u0439 \u043d\u0430\u043f\u0438\u0441\u0430\u0442\u0438 \u0441\u0430\u043c\u043e\u043c\u0443."

    const-string v5, "The reply to the sent log will arrive here and as a notification. You can also write yourself."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 GPS: \u044f\u043a \u043f\u0440\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 \u0432\u0442\u0440\u0430\u0442\u0456, \u043b\u0438\u0448\u0435 \u043c\u0435\u0440\u0435\u0436\u0430 \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0440\u0456\u0434\u0448\u0435"

    const-string v5, "No GPS: as with real loss, only the network comes less often"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 GPS (\u0442\u0435\u0441\u0442 \u0447\u0438\u0441\u043b\u0435\u043d\u043d\u044f)"

    const-string v5, "No GPS (dead-reckoning test)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0442\u0430\u0440\u0442"

    const-string v5, "Quick start"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0440\u0438 \u043a\u0440\u043e\u043a\u0438 \u0432\u0456\u0434 \u0430\u0434\u0440\u0435\u0441\u0438 \u0434\u043e \u0433\u043e\u043b\u043e\u0441\u043e\u0432\u043e\u0433\u043e \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    const-string v5, "Three steps from an address to voice guidance."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "1 \u042f\u043a\u0449\u043e GPS \u043f\u0456\u0434\u043c\u0456\u043d\u0435\u043d\u043e \u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u00ab\u0431\u0430\u0447\u0438\u0442\u044c\u00bb \u0441\u0435\u0431\u0435 \u0437\u0430 \u043a\u043e\u0440\u0434\u043e\u043d\u043e\u043c (\u043d\u0430\u043f\u0440\u0438\u043a\u043b\u0430\u0434, \u0443 \u041b\u0456\u043c\u0456), \u0442\u043e\u0447\u043a\u0430 A \u0441\u0442\u0430\u0432\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u043e\u0441\u0442\u0430\u043d\u043d\u0454 \u043c\u0456\u0441\u0446\u0435 \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u0430\u0431\u043e \u043d\u0430 \u0425\u0440\u0435\u0449\u0430\u0442\u0438\u043a. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0443 \u0437\u0433\u043e\u0440\u0442\u0430\u0454 \u043a\u043b\u0430\u0432\u0456\u0430\u0442\u0443\u0440\u0443."

    const-string v5, "1 If GPS is spoofed and the phone thinks it is abroad (for example, in Lima), point A is set to the last destination or to Khreshchatyk. Tapping the map hides the keyboard."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u043a\u0430\u0436\u0456\u0442\u044c, \u043a\u0443\u0434\u0438 \u0457\u0445\u0430\u0442\u0438"

    const-string v5, "Choose where to go"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0441\u043b\u044f \u0437\u0430\u043f\u0443\u0441\u043a\u0443 \u043a\u0443\u0440\u0441\u043e\u0440 \u0443\u0436\u0435 \u0432 \u0440\u044f\u0434\u043a\u0443 \u00ab\u041a\u0443\u0434\u0438 (\u0430\u0434\u0440\u0435\u0441\u0430)\u00bb, \u0430 \u0442\u043e\u0447\u043a\u0430 A \u2014 \u00ab\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435\u00bb (\u0432\u0430\u0448\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0437\u0430 GPS \u0447\u0438 \u043c\u0435\u0440\u0435\u0436\u0435\u044e). \u0412\u0432\u0435\u0434\u0456\u0442\u044c \u0430\u0434\u0440\u0435\u0441\u0443 \u0439 \u043e\u0431\u0435\u0440\u0456\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0443 \u2014 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043f\u043e\u0431\u0443\u0434\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c; \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u25be \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447 \u0443 \u043f\u043e\u0440\u043e\u0436\u043d\u044c\u043e\u043c\u0443 \u0440\u044f\u0434\u043a\u0443 (\u043f\u043e\u0440\u0443\u0447 \u0456\u0437 \u0431\u0443\u0444\u0435\u0440\u043e\u043c \u043e\u0431\u043c\u0456\u043d\u0443) \u0440\u043e\u0437\u0433\u043e\u0440\u0442\u0430\u0454 5 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u0445 \u043c\u0456\u0441\u0446\u044c \u043f\u0440\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f (\u0434\u043e\u0432\u0433\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u0440\u0438\u0431\u0438\u0440\u0430\u0454 \u0437\u0456 \u0441\u043f\u0438\u0441\u043a\u0443). \u041c\u043e\u0436\u043d\u0430 \u0439 \u0434\u043e\u0432\u0433\u043e \u043d\u0430\u0442\u0438\u0441\u043d\u0443\u0442\u0438 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456. \u041f\u0456\u0441\u043b\u044f \u043f\u0440\u0438\u0457\u0437\u0434\u0443 \u0439 \u00ab\u0421\u0442\u043e\u043f\u00bb \u0430\u0431\u043e \u043d\u043e\u0432\u043e\u0433\u043e \u0437\u0430\u043f\u0443\u0441\u043a\u0443 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443 \u0442\u043e\u0447\u043a\u0438 \u043e\u0447\u0438\u0449\u0430\u044e\u0442\u044c\u0441\u044f."

    const-string v5, "After launch the cursor is already in the \u201cWhere to (address)\u201d field and point A is \u201cMy location\u201d (your position by GPS or network). Enter an address and pick a suggestion \u2014 the route is built automatically; the \u25be arrow on the right of the empty field (next to the clipboard) expands the 5 latest destinations (long-press removes one from the list). You can also long-press on the map. After arriving and \u201cStop\u201d, or after restarting the app, the points are cleared."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0431\u0443\u0434\u0443\u0439\u0442\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442"

    const-string v5, "Build a route"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u0420\u0443\u0448\u0430\u0439\u00bb. \u0417\u043d\u0438\u0437\u0443 \u0437\'\u044f\u0432\u043b\u044f\u0442\u044c\u0441\u044f \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0438 \u0437 \u0447\u0430\u0441\u043e\u043c, \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u043d\u044e \u0456 \u0437\u0430\u0442\u043e\u0440\u043e\u043c; \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043d\u0430 \u0432\u0430\u0440\u0456\u0430\u043d\u0442, \u0449\u043e\u0431 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0438 \u0439\u043e\u0433\u043e \u043d\u0430 \u043a\u0430\u0440\u0442\u0456."

    const-string v5, "Tap \u201cGo\u201d. Options with time, distance and traffic jams appear at the bottom; tap an option to see it on the map."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0437\u043f\u043e\u0447\u043d\u0456\u0442\u044c \u0432\u0435\u0434\u0435\u043d\u043d\u044f"

    const-string v5, "Start guidance"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u0420\u043e\u0437\u043f\u043e\u0447\u0430\u0442\u0438\u00bb. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0435\u0434\u0435 \u0433\u043e\u043b\u043e\u0441\u043e\u043c \u0443\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u043e\u044e \u0456 \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454 \u0432\u0435\u0441\u0442\u0438, \u043d\u0430\u0432\u0456\u0442\u044c \u043a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u0431\u0440\u0435\u0448\u0435."

    const-string v5, "Tap \u201cStart\u201d. The app guides by voice and keeps guiding even when GPS is jammed or lying."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0448\u0443\u043a \u0456 \u0442\u043e\u0447\u043a\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Search and route points"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0440\u0445\u043d\u044f \u0447\u0430\u0441\u0442\u0438\u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u0434\u043e \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    const-string v5, "The top part of the screen before guidance starts."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u044f\u0434\u043e\u043a \u00ab\u041a\u0443\u0434\u0438 (\u0430\u0434\u0440\u0435\u0441\u0430)\u00bb"

    const-string v5, "The \u201cWhere to (address)\u201d field"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u043a\u0430\u0437\u043a\u0430 \u0432\u0441\u0435\u0440\u0435\u0434\u0438\u043d\u0456 \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u043b\u0435\u0436\u043d\u043e \u0432\u0456\u0434 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0457 \u0442\u043e\u0447\u043a\u0438: \u00ab\u0417\u0432\u0456\u0434\u043a\u0438\u00bb, \u00ab\u041a\u0443\u0434\u0438\u00bb \u0430\u0431\u043e \u00ab\u0427\u0435\u0440\u0435\u0437\u00bb. \u041f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0430\u0434\u0440\u0435\u0441 \u0437\'\u044f\u0432\u043b\u044f\u044e\u0442\u044c\u0441\u044f \u043f\u0456\u0434 \u0440\u044f\u0434\u043a\u043e\u043c."

    const-string v5, "The hint inside changes depending on the active point: \u201cFrom\u201d, \u201cTo\u201d or \u201cVia\u201d. Address suggestions appear under the field."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0441\u0442\u0430\u0432\u0438\u0442\u0438 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438"

    const-string v5, "Paste coordinates"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423 \u043f\u043e\u0440\u043e\u0436\u043d\u044c\u043e\u043c\u0443 \u0440\u044f\u0434\u043a\u0443: \u0431\u0435\u0440\u0435 \u0437 \u0431\u0443\u0444\u0435\u0440\u0430 \u043e\u0431\u043c\u0456\u043d\u0443 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 \u0432\u0438\u0434\u0443 \u00ab50.45012 30.5234\u00bb (\u0442\u0430\u043a \u0457\u0445 \u043a\u043e\u043f\u0456\u044e\u0454 Uklon Driver \u0434\u043e\u0432\u0433\u0438\u043c \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f\u043c \u043d\u0430 \u0430\u0434\u0440\u0435\u0441\u0443) \u0456 \u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0430\u043a\u0442\u0438\u0432\u043d\u0443 \u0442\u043e\u0447\u043a\u0443."

    const-string v5, "In an empty field: takes coordinates like \u201c50.45012 30.5234\u201d from the clipboard (Uklon Driver copies them with a long press on an address) and sets the active point."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze"

    const-string v5, "Route from Waze"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423 Waze \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u043e\u044e\u00bb \u0456 \u0432\u0438\u0431\u0435\u0440\u0456\u0442\u044c BlindDriver, \u0430\u0431\u043e \u0432\u0441\u0442\u0430\u0432\u0442\u0435 \u0442\u0430\u043a\u0435 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0432 \u0440\u044f\u0434\u043e\u043a \u00ab\u041a\u0443\u0434\u0438\u00bb. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0456\u0437\u044c\u043c\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 Waze, \u043f\u0440\u0438\u0432\'\u044f\u0436\u0435 \u0439\u043e\u0433\u043e \u0434\u043e \u0434\u043e\u0440\u0456\u0433, \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u043f\u043e\u0432\u0435\u0440\u043d\u0435 \u0432\u0430\u0441 \u0443 Waze: \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u0443 Waze, \u043d\u0435 \u0437\u0443\u043f\u0438\u043d\u044f\u044e\u0447\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u041f\u0440\u0430\u0446\u044e\u0454, \u043f\u043e\u043a\u0438 \u0442\u0440\u0438\u0432\u0430\u0454 \u043f\u043e\u0457\u0437\u0434\u043a\u0430 \u0432 Waze, \u0456 \u043b\u0438\u0448\u0435 \u0437 \u043a\u043b\u044e\u0447\u0435\u043c Mapbox. \u0426\u0435 \u043d\u0435\u043e\u0444\u0456\u0446\u0456\u0439\u043d\u0438\u0439 \u0456\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441 Waze: \u0432\u0456\u043d \u043c\u043e\u0436\u0435 \u0437\u043c\u0456\u043d\u0438\u0442\u0438\u0441\u044f."

    const-string v5, "In Waze during navigation tap \u201cShare drive\u201d and choose BlindDriver, or paste such a link into the \u201cWhere to\u201d field. The app takes the Waze route, snaps it to roads, starts guidance and returns you to Waze: \u201cBack\u201d returns to Waze without stopping guidance. Works while the Waze drive is going and only with a Mapbox key. This is an unofficial Waze interface: it may change."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0434\u043b\u044f Waze \u0456 \u043a\u0430\u0440\u0442 (\u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f)"

    const-string v5, "Position sharing for Waze and maps (paid feature)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0440\u0443\u0433\u043b\u0430 \u043a\u043d\u043e\u043f\u043a\u0430 \u0437\u0456 \u0437\u043d\u0430\u0447\u043a\u043e\u043c \u0440\u0430\u0434\u0456\u043e\u0445\u0432\u0438\u043b\u044c \u00ab((\u2022))\u00bb \u043f\u0456\u0434 \u0437\u043d\u0430\u0447\u043a\u043e\u043c GPS (\u043f\u043e\u0440\u0443\u0447 \u0437\u0456 \u0437\u043d\u0430\u0447\u043a\u043e\u043c \u0442\u0440\u0438\u0432\u043e\u0433\u0438; \u0446\u0435 \u043d\u0435 \u0456\u043d\u0434\u0438\u043a\u0430\u0442\u043e\u0440 \u043f\u0440\u0438\u0439\u043e\u043c\u0443 GPS, \u0430 \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447 \u043f\u0435\u0440\u0435\u0434\u0430\u0447\u0456): \u0437\u0435\u043b\u0435\u043d\u0430 \u2014 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0432\u0456\u0434\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u0456\u043d\u0448\u0438\u043c \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0430\u043c, \u0441\u0438\u043d\u044f \u2014 \u0443\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e, \u0430\u043b\u0435 GPS \u0443 \u043d\u043e\u0440\u043c\u0456, \u0441\u0456\u0440\u0430 \u2014 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e. \u041a\u043e\u043b\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u044c\u043e\u0433\u043e GPS \u043d\u0435\u043c\u0430\u0454, Waze \u0456 \u043a\u0430\u0440\u0442\u0438 \u043e\u0442\u0440\u0438\u043c\u0443\u044e\u0442\u044c \u043f\u043e\u0437\u0438\u0446\u0456\u044e BlindDriver. \u041f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u043e\u0434\u0438\u043d \u0440\u0430\u0437 \u0432\u0438\u0431\u0440\u0430\u0442\u0438 BlindDriver \u0443 \u00ab\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u2192 \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0434\u043b\u044f \u0444\u0456\u043a\u0442\u0438\u0432\u043d\u0438\u0445 \u043c\u0456\u0441\u0446\u0435\u0437\u043d\u0430\u0445\u043e\u0434\u0436\u0435\u043d\u044c\u00bb \u0456 \u0434\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 \u00ab\u041f\u043e\u043a\u0430\u0437 \u043f\u043e\u0432\u0435\u0440\u0445 \u0456\u043d\u0448\u0438\u0445 \u0432\u0456\u043a\u043e\u043d\u00bb: \u0442\u043e\u0434\u0456, \u043a\u043e\u043b\u0438 BlindDriver \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u043e, \u043f\u043e\u0432\u0435\u0440\u0445 Waze \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u043c\u0430\u043b\u0435\u043d\u044c\u043a\u0430 \u043a\u0430\u0440\u0442\u0430 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u0456 \u043a\u043d\u043e\u043f\u043a\u0430\u043c\u0438 \u2191100, \u2193100 \u0456 \u21bb; \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0443 \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a. \u041f\u043e\u043a\u0438 \u0439\u0434\u0435 \u043f\u0456\u0434\u043c\u0456\u043d\u0430, \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0442\u0435\u0436\u0438\u0442\u044c \u0437\u0430 \u0441\u0442\u0430\u043d\u043e\u043c \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432: \u043a\u043e\u043b\u0438 \u043f\u0440\u0438\u0439\u043c\u0430\u0447 \u0437\u043d\u043e\u0432\u0443 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u0454 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438 \u0431\u0435\u0437 \u043e\u0437\u043d\u0430\u043a \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f, \u043f\u0456\u0434\u043c\u0456\u043d\u0430 \u043d\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434 \u0437\u043d\u0456\u043c\u0430\u0454\u0442\u044c\u0441\u044f, \u0449\u043e\u0431 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS (Waze \u043d\u0430 \u0446\u0435\u0439 \u0447\u0430\u0441 \u0431\u0430\u0447\u0438\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS). \u041f\u0456\u0434 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f\u043c \u0442\u0430\u043a\u0438\u0445 \u043f\u0430\u0443\u0437 \u043d\u0435\u043c\u0430\u0454."

    const-string v5, "A round button with the radio-wave icon \u201c((\u2022))\u201d under the GPS icon (next to the alert icon; it is not a GPS reception indicator but a sharing switch): green \u2014 the position is given to other apps, blue \u2014 enabled but GPS is fine, grey \u2014 off. When there is no real GPS, Waze and maps receive the BlindDriver position. You need to select BlindDriver once in \u201cDeveloper options \u2192 Select mock location app\u201d and allow \u201cDisplay over other apps\u201d: then, when BlindDriver is minimized, a small map with the route and the buttons \u2191100, \u2193100 and \u21bb is shown over Waze; tapping the map opens the app. While spoofing is on, the app watches the satellite state: when the receiver uses satellites again without signs of jamming, spoofing is lifted for a few seconds to check real GPS (Waze sees real GPS for that time). Under jamming there are no such pauses."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043b\u0430\u0439\u043d-\u0440\u0435\u0436\u0438\u043c (\u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f)"

    const-string v5, "Offline mode (paid feature)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433 \u0456 \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u0437\u0430 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u043e\u043c \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c \u0443 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u0411\u0435\u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0440\u043e\u0431\u043d\u043e\u0433\u043e \u043f\u0435\u0440\u0456\u043e\u0434\u0443 \u0432\u043e\u043d\u0438 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u0456 (\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0456 \u0434\u0430\u043d\u0456 \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0439 \u0437\u043d\u043e\u0432\u0443 \u0437\u0430\u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e). \u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432\u0441\u0456\u043c."

    const-string v5, "Road-graph routes and address search by catalog without internet work during the trial period and with a subscription. Without a subscription after the trial period they are off (downloaded data stays on the phone and will work again with a subscription). The offline map is available to everyone."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u0438"

    const-string v5, "Clear"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0442\u0438\u0440\u0430\u0454 \u0442\u0435\u043a\u0441\u0442 \u0443 \u0440\u044f\u0434\u043a\u0443 \u043f\u043e\u0448\u0443\u043a\u0443. \u0411\u0456\u043b\u044f \u0442\u043e\u0447\u043e\u043a A/B/\u00ab\u0447\u0435\u0440\u0435\u0437\u00bb \u0446\u0435\u0439 \u0437\u043d\u0430\u0447\u043e\u043a \u043f\u0440\u0438\u0431\u0438\u0440\u0430\u0454 \u0441\u0430\u043c\u0443 \u0442\u043e\u0447\u043a\u0443."

    const-string v5, "Erases the text in the search field. Next to the A/B/\u201cvia\u201d points this icon removes the point itself."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0427\u0438\u043f\u0438 A, B, \u00ab\u0447\u0435\u0440\u0435\u0437\u00bb"

    const-string v5, "Chips A, B, \u201cvia\u201d"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0438\u0440\u0430\u044e\u0442\u044c, \u044f\u043a\u0443 \u0442\u043e\u0447\u043a\u0443 \u0432\u0438 \u0437\u0430\u0440\u0430\u0437 \u0437\u0430\u0434\u0430\u0454\u0442\u0435 (A \u2014 \u0441\u0442\u0430\u0440\u0442, B \u2014 \u0444\u0456\u043d\u0456\u0448, \u00ab\u0447\u0435\u0440\u0435\u0437\u00bb \u2014 \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u0430). \u042f\u043a\u0449\u043e \u0442\u043e\u0447\u043a\u0430 \u0432\u0436\u0435 \u0454, \u0432\u043e\u043d\u0430 \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456."

    const-string v5, "Choose which point you are setting now (A \u2014 start, B \u2014 finish, \u201cvia\u201d \u2014 intermediate). If the point already exists, it is shown on the map."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "REC: \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443"

    const-string v5, "REC: log recording"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0427\u0435\u0440\u0432\u043e\u043d\u0438\u0439 \u0437 \u043c\u0438\u0433\u043e\u0442\u043b\u0438\u0432\u043e\u044e \u043a\u0440\u0430\u043f\u043a\u043e\u044e \u2014 \u0456\u0434\u0435 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443, \u0441\u0456\u0440\u0438\u0439 \u2014 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0454. \u0423 \u0437\u0431\u0456\u0440\u0446\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u0437\u0430\u043f\u0438\u0441 \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443, \u0430 \u0443 \u0432\u0438\u043f\u0443\u0449\u0435\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e (\u0443 \u043b\u043e\u0433\u0430\u0445 \u0442\u0440\u0435\u043a\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a): \u0432\u043c\u0438\u043a\u0430\u0439\u0442\u0435 REC, \u043a\u043e\u043b\u0438 \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0437\u0430\u043f\u0438\u0441\u0430\u0442\u0438 \u043b\u043e\u0433. \u0410\u0432\u0442\u043e\u0437\u0430\u043f\u0438\u0441 \u043c\u043e\u0436\u043d\u0430 \u0432\u0432\u0456\u043c\u043a\u043d\u0443\u0442\u0438 \u0432 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f\u0445. \u041f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0446\u0435\u0439 \u0437\u043d\u0430\u0447\u043e\u043a \u0454 \u0432 \u043d\u0438\u0436\u043d\u0456\u0439 \u043f\u0430\u043d\u0435\u043b\u0456."

    const-string v5, "Red with a blinking dot \u2014 the log is being recorded, grey \u2014 off. Tapping toggles it. In the developer build recording starts by itself at launch, and in the released version it is off by default (logs contain trip tracks): turn on REC when you need to record a log. Auto-recording can be enabled in Settings. During guidance this icon is in the bottom panel."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0435\u043b\u0435\u043d\u0438\u0439 A \u0456 \u0447\u0435\u0440\u0432\u043e\u043d\u0438\u0439 B"

    const-string v5, "Green A and red B"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u043e\u0447\u043a\u0438 \u0441\u0442\u0430\u0440\u0442\u0443 \u0456 \u0444\u0456\u043d\u0456\u0448\u0443. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043d\u0430 \u043c\u0430\u0440\u043a\u0435\u0440, \u0449\u043e\u0431 \u0443\u0437\u044f\u0442\u0438 \u0439\u043e\u0433\u043e \u0434\u043b\u044f \u043f\u0435\u0440\u0435\u043c\u0456\u0449\u0435\u043d\u043d\u044f: \u043f\u0456\u0434 \u043d\u0438\u043c \u0437\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f \u043f\u0435\u0440\u0435\u0445\u0440\u0435\u0441\u0442\u044f, \u0430 \u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u041f\u043e\u0441\u0442\u0430\u0432\u0438\u0442\u0438 \u0442\u0443\u0442\u00bb \u0437\u0430\u0444\u0456\u043a\u0441\u0443\u0454 \u043d\u043e\u0432\u0435 \u043c\u0456\u0441\u0446\u0435."

    const-string v5, "Start and finish points. Tap a marker to pick it up for moving: a crosshair appears under it, and the \u201cPlace here\u201d button fixes the new location."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u042f \u0442\u0443\u0442"

    const-string v5, "I\'m here"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u00ab\u042f \u0442\u0443\u0442\u00bb"

    const-string v5, "\u201cI\'m here\u201d"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0442\u0430\u0432\u0438\u0442\u044c \u0446\u044e \u0442\u043e\u0447\u043a\u0443 \u043d\u0430 \u0432\u0430\u0448\u0435 \u043f\u043e\u0442\u043e\u0447\u043d\u0435 \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u043d\u044f."

    const-string v5, "Puts this point at your current location."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e\u043c\u0456\u0436\u043d\u0456 \u0442\u043e\u0447\u043a\u0438"

    const-string v5, "Via points"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0456\u0440\u0456 \u043f\u043e\u0437\u043d\u0430\u0447\u043a\u0438 \u00ab\u0447\u0435\u0440\u0435\u0437: 1 \u2715\u00bb. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u043f\u0440\u0438\u0431\u0440\u0430\u0442\u0438 \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u0443 \u0442\u043e\u0447\u043a\u0443. \u0414\u043e\u0432\u0433\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u0438\u043c \u0447\u0438\u043f\u043e\u043c \u00ab\u0447\u0435\u0440\u0435\u0437\u00bb \u0434\u043e\u0434\u0430\u0454 \u043d\u043e\u0432\u0443."

    const-string v5, "Grey tags \u201cvia: 1 \u2715\u201d. Tap to remove the intermediate point. A long press on the map with the \u201cvia\u201d chip active adds a new one."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0456\u043c"

    const-string v5, "Home"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0442\u043e\u0447\u043a\u0443 \u00ab\u0414\u0456\u043c\u00bb. \u0414\u043e\u0432\u0433\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454 \u0430\u043a\u0442\u0438\u0432\u043d\u0443 \u0442\u043e\u0447\u043a\u0443 \u044f\u043a \u00ab\u0414\u0456\u043c\u00bb. \u041f\u0456\u0434\u0441\u0432\u0456\u0447\u0435\u043d\u0438\u0439, \u043a\u043e\u043b\u0438 \u0430\u0434\u0440\u0435\u0441\u0443 \u0437\u0430\u0434\u0430\u043d\u043e."

    const-string v5, "A tap sets the \u201cHome\u201d point. A long press saves the active point as \u201cHome\u201d. Highlighted when the address is set."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0431\u043e\u0442\u0430"

    const-string v5, "Work"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0430\u043a \u0441\u0430\u043c\u043e, \u044f\u043a \u00ab\u0414\u0456\u043c\u00bb, \u0434\u043b\u044f \u0440\u043e\u0431\u043e\u0447\u043e\u0457 \u0430\u0434\u0440\u0435\u0441\u0438."

    const-string v5, "Same as \u201cHome\u201d, for the work address."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438"

    const-string v5, "Saved routes"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043f\u0438\u0441\u043e\u043a \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432. \u0417\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454\u0442\u044c\u0441\u044f \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443."

    const-string v5, "The list of saved routes. A saved route opens without internet."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u0430\u0434\u0440\u0435\u0441\u0438"

    const-string v5, "Saved addresses"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0430\u0448 \u0441\u043f\u0438\u0441\u043e\u043a \u0430\u0434\u0440\u0435\u0441. \u0410\u0434\u0440\u0435\u0441\u0430 \u043f\u043e\u0442\u0440\u0430\u043f\u043b\u044f\u0454 \u0441\u044e\u0434\u0438, \u043b\u0438\u0448\u0435 \u043a\u043e\u043b\u0438 \u0432\u0438 \u0441\u0430\u043c\u0456 \u0457\u0457 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u0442\u0435: \u0434\u043e\u0432\u0433\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043d\u0430 \u0442\u043e\u0447\u043a\u0443 A \u0447\u0438 \u0411 \u2192 \u00ab\u0414\u043e\u0434\u0430\u0442\u0438 \u0432 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u0430\u0434\u0440\u0435\u0441\u0438\u00bb."

    const-string v5, "Your address list. An address gets here only when you save it yourself: long-press point A or B \u2192 \u201cAdd to saved addresses\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u043c\u0456\u043d\u044f\u0442\u0438 A \u0456 B"

    const-string v5, "Swap A and B"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0456\u043d\u044f\u0454 \u0442\u043e\u0447\u043a\u0438 \u0441\u0442\u0430\u0440\u0442\u0443 \u0456 \u0444\u0456\u043d\u0456\u0448\u0443 \u043c\u0456\u0441\u0446\u044f\u043c\u0438 (\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442)."

    const-string v5, "Swaps the start and finish points (reverse route)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043a\u0443 \u044f\u043a \u043c\u0430\u0440\u0448\u0440\u0443\u0442"

    const-string v5, "Save trip as route"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043a\u0443"

    const-string v5, "Save trip"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f \u043f\u0456\u0441\u043b\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0438 \u0456\u0437 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u043c \u0442\u0440\u0435\u043a\u043e\u043c (\u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u0438\u0439 REC; \u0432\u0456\u0434 300 \u043c): \u0437\u043d\u0456\u043c\u0430\u0454 \u0437 \u0442\u0440\u0435\u043a\u0443 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043f\u043e \u0434\u043e\u0440\u043e\u0433\u0430\u0445 \u0456 \u0434\u043e\u0434\u0430\u0454 \u0439\u043e\u0433\u043e \u0434\u043e \u00ab\u0417\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0438\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432\u00bb."

    const-string v5, "Appears after a trip with a recorded track (REC must be on; from 300 m): turns the track into a road route and adds it to \u201cSaved routes\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u044f\u0434 \u0437\u043d\u0430\u0447\u043a\u0456\u0432 \u043d\u0430\u0434 \u043a\u0430\u0440\u0442\u043e\u044e"

    const-string v5, "Row of icons above the map"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0430\u0446\u044e\u044e\u0442\u044c \u0456 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456, \u0456 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    const-string v5, "Work both on the map and during guidance."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u0443 \u043d\u043e\u0440\u043c\u0456"

    const-string v5, "GPS OK"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438 \u043f\u0440\u0438\u0439\u043c\u0430\u044e\u0442\u044c\u0441\u044f, \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u0430. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454 \u043f\u0430\u043d\u0435\u043b\u044c \u0434\u0456\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0438."

    const-string v5, "Satellites are received, the position is trusted. Tapping opens the diagnostics panel."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u0441\u043b\u0430\u0431\u043a\u0438\u0439"

    const-string v5, "GPS weak"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0424\u0456\u043a\u0441\u0438 \u0454, \u0430\u043b\u0435 \u043d\u0435\u0442\u043e\u0447\u043d\u0456. \u041f\u043e\u0437\u0438\u0446\u0456\u044f, \u044f\u043a\u0443 \u043f\u043e\u043a\u0430\u0437\u0443\u0454 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a, \u0437\u0430\u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f \u0440\u043e\u0431\u043e\u0447\u043e\u044e."

    const-string v5, "Fixes exist but are inaccurate. The position shown by the app remains usable."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u0432\u0442\u0440\u0430\u0447\u0435\u043d\u043e"

    const-string v5, "GPS lost"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0432\u0456\u0440\u0435\u043d\u0438\u0445 \u0444\u0456\u043a\u0441\u0456\u0432 \u043d\u0435\u043c\u0430\u0454. \u041c\u0430\u0440\u043a\u0435\u0440 \u0457\u0434\u0435 \u0437\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u043c \u043f\u043e \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u0445, \u043c\u0435\u0440\u0435\u0436\u0435\u0432\u043e\u044e \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u0439 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044e (\u0441\u0456\u0440\u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0437 \u043a\u043e\u043b\u043e\u043c)."

    const-string v5, "No trusted fixes. The marker moves by dead reckoning from sensors, network position and speed (grey arrow with a circle)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u043b\u0443\u0448\u0456\u043d\u043d\u044f"

    const-string v5, "Jamming"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0439\u043c\u0430\u0447 \u043c\u043e\u0432\u0447\u0438\u0442\u044c, \u0430 \u0441\u0438\u0433\u043d\u0430\u043b \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432 \u044f\u0432\u043d\u043e \u043f\u0440\u0438\u0433\u043d\u0456\u0447\u0435\u043d\u0438\u0439 (\u0437\u0430 \u0440\u0456\u0432\u043d\u0435\u043c AGC). \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0435\u0434\u0435 \u0437\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u043c \u0456 \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u043b\u044f\u0454 \u0433\u043e\u043b\u043e\u0441\u043e\u043c."

    const-string v5, "The receiver is silent and the satellite signal is clearly suppressed (by AGC level). The app guides by dead reckoning and announces it by voice."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u0454, \u0430\u043b\u0435 \u0437\u0430\u0432\u0430\u0434\u0438 \u0432\u0438\u0434\u043d\u043e"

    const-string v5, "GPS is present but interference is visible"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0424\u0456\u043a\u0441\u0438 \u043f\u0440\u0438\u0439\u043c\u0430\u044e\u0442\u044c\u0441\u044f, \u043f\u0440\u043e\u0442\u0435 \u043f\u0435\u0440\u0435\u0448\u043a\u043e\u0434\u0430 \u0432\u0436\u0435 \u043f\u043e\u043c\u0456\u0442\u043d\u0430: \u0434\u043e\u0432\u0456\u0440\u044f\u0442\u0438 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0432\u0430\u0440\u0442\u043e \u043e\u0431\u0435\u0440\u0435\u0436\u043d\u0456\u0448\u0435."

    const-string v5, "Fixes are received, but the interference is already noticeable: trust the position more carefully."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u043e\u043b\u043e\u0441: \u0443\u0441\u0456 \u043f\u043e\u0434\u0456\u0457"

    const-string v5, "Voice: all events"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0435\u043b\u0435\u043d\u0438\u0439: \u043e\u0437\u0432\u0443\u0447\u0443\u044e\u0442\u044c\u0441\u044f \u043c\u0430\u043d\u0435\u0432\u0440\u0438, \u043a\u0430\u043c\u0435\u0440\u0438, \u0441\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043b\u0456\u043c\u0438\u0442\u0438 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456, \u0442\u0440\u0438\u0432\u043e\u0433\u0438. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0454 \u0440\u0435\u0436\u0438\u043c \u043f\u043e \u043a\u043e\u043b\u0443."

    const-string v5, "Green: maneuvers, cameras, leaving the route, speed limits and alerts are announced. Tapping cycles through the modes."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u043e\u043b\u043e\u0441: \u043b\u0438\u0448\u0435 \u0432\u0430\u0436\u043b\u0438\u0432\u0435"

    const-string v5, "Voice: important only"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u043c\u0430\u0440\u0430\u043d\u0447\u0435\u0432\u0438\u0439: \u0442\u0456\u043b\u044c\u043a\u0438 \u043a\u0430\u043c\u0435\u0440\u0438, \u0441\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0456 \u0442\u0440\u0438\u0432\u043e\u0433\u0438."

    const-string v5, "Orange: only cameras, leaving the route and alerts."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u043e\u043b\u043e\u0441 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e"

    const-string v5, "Voice off"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0456\u0440\u0438\u0439: \u0431\u0435\u0437 \u0433\u043e\u043b\u043e\u0441\u043e\u0432\u043e\u0433\u043e \u043e\u0437\u0432\u0443\u0447\u0435\u043d\u043d\u044f; \u043f\u0440\u043e \u0442\u0440\u0438\u0432\u043e\u0433\u0438 \u2014 \u043b\u0438\u0448\u0435 \u0441\u043c\u0443\u0433\u0430 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456."

    const-string v5, "Grey: no voice announcements; for alerts \u2014 only a strip on the screen."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u0433\u043e\u043b\u043e\u0441\u0443"

    const-string v5, "Voice volume"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u0413\u043e\u043b\u043e\u0441: \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043e\u043a, \u043f\u0430\u0443\u0437\u0430 \u043c\u0443\u0437\u0438\u043a\u0438 \u043d\u0430 \u0447\u0430\u0441 \u0444\u0440\u0430\u0437\u0438 (\u044f\u043a\u0449\u043e \u043f\u0456\u0434 \u043c\u0443\u0437\u0438\u043a\u0443 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0443 \u043d\u0435 \u0447\u0443\u0442\u0438), \u043f\u0456\u0434\u0441\u0438\u043b\u0435\u043d\u043d\u044f \u0433\u0443\u0447\u043d\u043e\u0441\u0442\u0456 \u043c\u0435\u0434\u0456\u0430 \u0456 \u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c\u00bb."

    const-string v5, "Settings \u2192 Voice: prompt volume, music pause during a phrase (if the prompt cannot be heard over music), media volume boost and the \u201cTest volume\u201d button."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u0430 \u0437\u0430 \u043a\u0443\u0440\u0441\u043e\u043c"

    const-string v5, "Heading-up map"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u0430 \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u043d\u0430\u043f\u0440\u044f\u043c\u043a\u043e\u043c \u0440\u0443\u0445\u0443, \u0432\u043f\u0435\u0440\u0435\u0434 \u0437\u0430\u0432\u0436\u0434\u0438 \u0432\u0433\u043e\u0440\u0443. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0454 \u043d\u0430 \u00abN \u2191\u00bb."

    const-string v5, "The map rotates with the direction of travel, forward is always up. Tapping switches to \u201cN \u2191\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0432\u043d\u0456\u0447 \u0443\u0433\u043e\u0440\u0456"

    const-string v5, "North up"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u0430 \u043d\u0435 \u043e\u0431\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u0440\u0435\u0436\u0438\u043c \u00ab\u0437\u0430 \u043a\u0443\u0440\u0441\u043e\u043c\u00bb \u0456 \u0446\u0435\u043d\u0442\u0440\u0443\u0454 \u043d\u0430 \u0432\u0430\u0441."

    const-string v5, "The map does not rotate. Tapping restores \u201cheading-up\u201d mode and centers on you."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0435\u043c\u0430 \u043a\u0430\u0440\u0442\u0438"

    const-string v5, "Map theme"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e (\u0437\u0430 \u0442\u0435\u043c\u043e\u044e \u0441\u0438\u0441\u0442\u0435\u043c\u0438), \u0434\u0435\u043d\u044c \u2600 \u0430\u0431\u043e \u043d\u0456\u0447 \u263d. \u041d\u0456\u0447 \u0442\u0435\u043c\u043d\u0456\u0448\u0430, \u0430\u043b\u0435 \u0434\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u0456\u0434\u043f\u0438\u0441\u0438 \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f \u0447\u0438\u0442\u0430\u0431\u0435\u043b\u044c\u043d\u0438\u043c\u0438."

    const-string v5, "Auto (system theme), day \u2600 or night \u263d. Night is darker, but roads and labels stay readable."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u2014 \u043d\u0430\u0445\u0438\u043b \u043a\u0430\u0440\u0442\u0438 \u0439 \u043e\u0431\'\u0454\u043c\u043d\u0456 \u0431\u0443\u0434\u0456\u0432\u043b\u0456 (\u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e: \u043f\u043b\u043e\u0441\u043a\u0430 \u043a\u0430\u0440\u0442\u0430 \u0437 \u043a\u043e\u043d\u0442\u0443\u0440\u0430\u043c\u0438 \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432). \u041f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u043d\u0430\u0445\u0438\u043b \u0454 \u0437\u0430\u0432\u0436\u0434\u0438, \u043a\u043d\u043e\u043f\u043a\u0430 \u0432\u043c\u0438\u043a\u0430\u0454 \u043b\u0438\u0448\u0435 \u0431\u0443\u0434\u0456\u0432\u043b\u0456. \u041f\u043e\u043a\u0438 \u0441\u0442\u0430\u0432\u0438\u0442\u0435 \u0442\u043e\u0447\u043a\u0443 \u043f\u0435\u0440\u0435\u043a\u0440\u0435\u0441\u0442\u044f\u043c, \u043a\u0430\u0440\u0442\u0430 \u0442\u0438\u043c\u0447\u0430\u0441\u043e\u0432\u043e \u043f\u043b\u043e\u0441\u043a\u0430."

    const-string v5, "Without guidance \u2014 map tilt and 3D buildings (off: flat map with building outlines). During guidance the tilt is always on, the button toggles only buildings. While you place a point with the crosshair, the map is temporarily flat."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043b\u0430\u043d\u0443\u0432\u0430\u043d\u043d\u044f \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Route planning"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0438\u0436\u043d\u044f \u0447\u0430\u0441\u0442\u0438\u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u0434\u043e \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    const-string v5, "The bottom part of the screen before guidance starts."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u0443\u0448\u0430\u0439"

    const-string v5, "Go"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442. \u0410\u043a\u0442\u0438\u0432\u043d\u0430, \u043a\u043e\u043b\u0438 \u0437\u0430\u0434\u0430\u043d\u043e A \u0456 B. \u041f\u043e\u043a\u0430\u0437\u0443\u0454 \u0434\u043e \u0442\u0440\u044c\u043e\u0445 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0456\u0432."

    const-string v5, "Builds a route. Active when A and B are set. Shows up to three options."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "30 \u0445\u0432"

    const-string v5, "30 min"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u043a\u0430 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0430"

    const-string v5, "Option card"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0427\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0437 \u0443\u0440\u0430\u0445\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u0437\u0430\u0442\u043e\u0440\u0456\u0432, \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c, \u00ab\u0437\u0430\u0442\u043e\u0440\u0438 +N \u0445\u0432\u00bb \u0456 \u0433\u043e\u043b\u043e\u0432\u043d\u0430 \u0434\u043e\u0440\u043e\u0433\u0430. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0432\u0438\u0431\u0438\u0440\u0430\u0454 \u0432\u0430\u0440\u0456\u0430\u043d\u0442 \u0456 \u0432\u043f\u0438\u0441\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0443 \u043a\u0430\u0434\u0440: \u0432\u0438\u0434\u043d\u043e \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0456 \u043a\u0456\u043d\u0435\u0446\u044c."

    const-string v5, "Travel time including traffic, distance, \u201ctraffic +N min\u201d and the main road. Tapping selects the option and fits the route into the frame: the start and end are visible."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043b\u0456\u0440 \u043b\u0456\u043d\u0456\u0457 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Route line color"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0438\u043d\u0456\u0439: \u0432\u0456\u043b\u044c\u043d\u043e. \u0416\u043e\u0432\u0442\u0438\u0439: \u043f\u043e\u043c\u0456\u0440\u043d\u0438\u0439 \u0440\u0443\u0445. \u0427\u0435\u0440\u0432\u043e\u043d\u0438\u0439: \u0441\u0438\u043b\u044c\u043d\u0438\u0439 \u0437\u0430\u0442\u043e\u0440. \u041f\u0443\u0440\u043f\u0443\u0440\u043d\u0438\u0439: \u0434\u0443\u0436\u0435 \u0441\u0438\u043b\u044c\u043d\u0438\u0439 \u0437\u0430\u0442\u043e\u0440. \u041b\u0456\u043d\u0456\u044f \u043c\u0430\u0454 \u0442\u0435\u043c\u043d\u0443 \u043e\u0431\u043b\u044f\u043c\u0456\u0432\u043a\u0443, \u0449\u043e\u0431 \u043d\u0435 \u0437\u043b\u0438\u0432\u0430\u0442\u0438\u0441\u044f \u0437 \u0436\u043e\u0432\u0442\u0438\u043c\u0438 \u0434\u043e\u0440\u043e\u0433\u0430\u043c\u0438 \u043a\u0430\u0440\u0442\u0438. \u0421\u0456\u0440\u0438\u0439: \u0432\u0436\u0435 \u043f\u0440\u043e\u0439\u0434\u0435\u043d\u0430 \u0447\u0430\u0441\u0442\u0438\u043d\u0430."

    const-string v5, "Blue: free flow. Yellow: moderate traffic. Red: heavy jam. Purple: very heavy jam. The line has a dark outline so it does not blend with the yellow roads of the map. Grey: the part already passed."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0437\u043f\u043e\u0447\u0430\u0442\u0438"

    const-string v5, "Start"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u043f\u0443\u0441\u043a\u0430\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u0438\u0431\u0440\u0430\u043d\u0438\u043c \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u043e\u043c."

    const-string v5, "Starts guidance with the selected option."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438"

    const-string v5, "Save"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043b\u0430\u0434\u0435 \u0432\u0438\u0431\u0440\u0430\u043d\u0438\u0439 \u0432\u0430\u0440\u0456\u0430\u043d\u0442 \u0443 \u00ab\u0417\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438\u00bb \u043f\u0456\u0434 \u043d\u0430\u0437\u0432\u043e\u044e \u043d\u0430 \u0432\u0430\u0448 \u0432\u0438\u0431\u0456\u0440."

    const-string v5, "Puts the selected option into \u201cSaved routes\u201d under a name of your choice."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0431\u0440\u0430\u0442\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438"

    const-string v5, "Clear routes"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u043a\u0440\u0438\u0432\u0430\u0454 \u043f\u0430\u043d\u0435\u043b\u044c \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0456\u0432; \u0442\u043e\u0447\u043a\u0438 A \u0456 B \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f."

    const-string v5, "Closes the options panel; points A and B stay."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0456\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430"

    const-string v5, "Diagnostics"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043d\u0430 \u0437\u043d\u0430\u0447\u043e\u043a \u0441\u0442\u0430\u043d\u0443 GPS \u0443 \u0432\u0435\u0440\u0445\u043d\u044c\u043e\u043c\u0443 \u0440\u044f\u0434\u0443. \u041f\u0430\u043d\u0435\u043b\u044c \u0434\u043b\u044f \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f: \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 GPS \u0456 \u043c\u0435\u0440\u0435\u0436\u0456, \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438, \u0440\u0456\u0432\u0435\u043d\u044c \u0441\u0438\u0433\u043d\u0430\u043b\u0443 (C/N0, AGC), \u0434\u0430\u0442\u0447\u0438\u043a\u0438. \u041f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447 \u00ab\u0411\u0435\u0437 GPS\u00bb \u0432\u043c\u0438\u043a\u0430\u0454 \u0442\u0435\u0441\u0442 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u0432\u043e\u0433\u043e \u0432\u0435\u0434\u0435\u043d\u043d\u044f: \u0444\u0456\u043a\u0441\u0438 GPS \u043b\u0438\u0448\u0435 \u043f\u0438\u0448\u0443\u0442\u044c\u0441\u044f \u0432 \u043b\u043e\u0433."

    const-string v5, "Tap the GPS status icon in the top row. A debugging panel: GPS and network coordinates, satellites, signal level (C/N0, AGC), sensors. The \u201cNo GPS\u201d switch turns on a dead-reckoning guidance test: GPS fixes are only written to the log."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0446\u0456\u043b (\u0446\u0435\u043d\u0442\u0440)"

    const-string v5, "Crosshair (center)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043d\u043e\u043f\u043a\u0430 \u0437 \u043f\u0440\u0438\u0446\u0456\u043b\u043e\u043c \u043f\u043e\u0440\u0443\u0447 \u0456\u0437 \u00ab\u0420\u0443\u0448\u0430\u0439\u00bb: \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u043a\u0430\u043c\u0435\u0440\u0443 \u0434\u043e \u0432\u0430\u0448\u043e\u0457 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u043f\u0456\u0441\u043b\u044f \u0442\u043e\u0433\u043e, \u044f\u043a \u0432\u0438 \u043f\u0435\u0440\u0435\u0441\u0443\u043d\u0443\u043b\u0438 \u043a\u0430\u0440\u0442\u0443."

    const-string v5, "The crosshair button next to \u201cGo\u201d: returns the camera to your position after you have moved the map."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0430\u0441\u0448\u0442\u0430\u0431 \u00ab+\u00bb \u0456 \u00ab\u2212\u00bb"

    const-string v5, "Zoom \u201c+\u201d and \u201c\u2212\u201d"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0432\u0456 \u043a\u043d\u043e\u043f\u043a\u0438 \u0431\u0456\u043b\u044f \u043f\u0440\u0430\u0432\u043e\u0433\u043e \u043d\u0438\u0436\u043d\u044c\u043e\u0433\u043e \u043a\u0443\u0442\u0430 \u043a\u0430\u0440\u0442\u0438. \u041f\u0456\u0434 \u0447\u0430\u0441 \u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u0437\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e (\u0432\u0435\u0434\u0435\u043d\u043d\u044f, \u0430\u0431\u043e \u043f\u0440\u043e\u0441\u0442\u043e \u0432\u0456\u0434\u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443) \u0437\u043c\u0456\u043d\u044e\u044e\u0442\u044c \u043c\u0430\u0441\u0448\u0442\u0430\u0431 \u043d\u0430 \u043f\u0456\u0432 \u0440\u0456\u0432\u043d\u044f \u0439 \u0432\u0438\u043c\u0438\u043a\u0430\u044e\u0442\u044c \u00abAuto\u00bb; \u043f\u043e\u0437\u0430 \u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f\u043c \u043f\u0440\u043e\u0441\u0442\u043e \u043d\u0430\u0431\u043b\u0438\u0436\u0430\u044e\u0442\u044c \u0456 \u0432\u0456\u0434\u0434\u0430\u043b\u044f\u044e\u0442\u044c \u043a\u0430\u0440\u0442\u0443."

    const-string v5, "Two buttons near the bottom-right corner of the map. While tracking the position (guidance, or just tracking without a route) they change the zoom by half a level and turn off \u201cAuto\u201d; outside tracking they simply zoom the map in and out."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e-\u043c\u0430\u0441\u0448\u0442\u0430\u0431"

    const-string v5, "Auto zoom"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u0441\u0432\u0456\u0447\u0435\u043d\u0438\u0439, \u043a\u043e\u043b\u0438 \u0443\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u0438\u0439. \u0427\u0438\u043c \u0448\u0432\u0438\u0434\u0448\u0435 \u0432\u0438 \u0457\u0434\u0435\u0442\u0435, \u0442\u0438\u043c \u0434\u0440\u0456\u0431\u043d\u0456\u0448\u0438\u0439 \u043c\u0430\u0441\u0448\u0442\u0430\u0431 (\u0434\u0430\u043b\u0456 \u0432\u0438\u0434\u043d\u043e \u0432\u043f\u0435\u0440\u0435\u0434); \u0437\u0430 350 \u043c \u0434\u043e \u043c\u0430\u043d\u0435\u0432\u0440\u0443 \u043a\u0430\u0440\u0442\u0430 \u043f\u043b\u0430\u0432\u043d\u043e \u043d\u0430\u0431\u043b\u0438\u0436\u0430\u0454\u0442\u044c\u0441\u044f, \u0449\u043e\u0431 \u0431\u0443\u043b\u043e \u0432\u0438\u0434\u043d\u043e \u043f\u0435\u0440\u0435\u0445\u0440\u0435\u0441\u0442\u044f. \u041f\u043e\u0432\u0442\u043e\u0440\u043d\u0435 \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0432\u0438\u043c\u0438\u043a\u0430\u0454 \u00abAuto\u00bb \u0456 \u043b\u0438\u0448\u0430\u0454 \u043f\u043e\u0442\u043e\u0447\u043d\u0438\u0439 \u043c\u0430\u0441\u0448\u0442\u0430\u0431; \u00ab+\u00bb \u0456 \u00ab\u2212\u00bb \u0442\u0430\u043a\u043e\u0436 \u0439\u043e\u0433\u043e \u0432\u0438\u043c\u0438\u043a\u0430\u044e\u0442\u044c. \u0412\u0438\u0431\u0456\u0440 \u0437\u0430\u043f\u0430\u043c\'\u044f\u0442\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "Highlighted when on. The faster you drive, the smaller the zoom (you see farther ahead); 350 m before a maneuver the map smoothly zooms in so the intersection is visible. Tapping again turns \u201cAuto\u201d off and keeps the current zoom; \u201c+\u201d and \u201c\u2212\u201d also turn it off. The choice is remembered."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0445\u0456\u0434: \u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb"

    const-string v5, "Exit: the \u201cBack\u201d button"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0432\u0456\u0447\u0456 \u043f\u043e\u0441\u043f\u0456\u043b\u044c \u043d\u0430 \u0433\u043e\u043b\u043e\u0432\u043d\u043e\u043c\u0443 \u0435\u043a\u0440\u0430\u043d\u0456 \u043f\u043e\u0432\u043d\u0456\u0441\u0442\u044e \u0437\u0430\u043a\u0440\u0438\u0432\u0430\u0454 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a: \u0437\u0443\u043f\u0438\u043d\u044f\u0454 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443, \u0434\u0430\u0442\u0447\u0438\u043a\u0438 \u0456 \u0441\u043b\u0443\u0436\u0431\u0443. \u041f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0442\u0440\u0438\u0447\u0456 \u043f\u043e\u0441\u043f\u0456\u043b\u044c (\u0449\u043e\u0431 \u0432\u0438\u043f\u0430\u0434\u043a\u043e\u0432\u043e \u043d\u0435 \u0437\u0430\u043a\u0440\u0438\u0442\u0438 \u043d\u0430\u0432\u0456\u0433\u0430\u0442\u043e\u0440 \u0434\u043e\u0440\u043e\u0433\u043e\u044e). \u0421\u043f\u0435\u0440\u0448\u0443 \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb \u0437\u0430\u043a\u0440\u0438\u0432\u0430\u0454 \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0456 \u043f\u0430\u043d\u0435\u043b\u0456. \u042f\u043a\u0449\u043e \u043f\u0440\u043e\u0441\u0442\u043e \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u0438 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a, \u0431\u0435\u0437 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u043e\u043d\u043e \u0447\u0435\u0440\u0435\u0437 2 \u0445\u0432\u0438\u043b\u0438\u043d\u0438 \u0441\u0430\u043c\u0435 \u0437\u0443\u043f\u0438\u043d\u044f\u0454 \u0437\u0430\u043f\u0438\u0441 \u0456 \u0434\u0430\u0442\u0447\u0438\u043a\u0438 (\u0443 \u0444\u043e\u043d\u0456 Android \u0432\u0441\u0435 \u043e\u0434\u043d\u043e \u043d\u0435 \u0432\u0456\u0434\u0434\u0430\u0454 \u0457\u0445 \u0431\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u0435\u043d\u043d\u044f)."

    const-string v5, "Pressed twice in a row on the main screen it fully closes the app: stops log recording, sensors and the service. During guidance it takes three presses in a row (so you do not close the navigator by accident while driving). First \u201cBack\u201d closes open panels. If you simply minimize the app, without guidance it stops recording and sensors by itself after 2 minutes (Android does not give them back in the background without active guidance anyway)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u043e\u0433 \u2197"

    const-string v5, "Log \u2197"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u043e\u0433"

    const-string v5, "Log"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043d\u043e\u043f\u043a\u0430 \u043f\u0456\u0434 \u0440\u044f\u0434\u043a\u043e\u043c \u0430\u0434\u0440\u0435\u0441\u0438, \u043f\u0440\u0430\u0432\u043e\u0440\u0443\u0447 \u0432\u0456\u0434 REC. \u041d\u0430\u0434\u0441\u0438\u043b\u0430\u0454 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u0439 \u0444\u0430\u0439\u043b \u043b\u043e\u0433\u0443 (\u043d\u0430\u043f\u0440\u0438\u043a\u043b\u0430\u0434, \u0443 Telegram \u0430\u0431\u043e \u043d\u0430 \u043f\u043e\u0448\u0442\u0443). \u0423 \u043b\u043e\u0433\u0443 \u0442\u0440\u0435\u043a\u0438, \u0434\u0430\u0442\u0447\u0438\u043a\u0438 \u0439 \u043f\u043e\u0434\u0456\u0457 \u0434\u043b\u044f \u0440\u043e\u0437\u0431\u043e\u0440\u0443 \u0440\u043e\u0431\u043e\u0442\u0438 \u043d\u0430\u0432\u0456\u0433\u0430\u0446\u0456\u0457."

    const-string v5, "A button under the address field, to the right of REC. Sends the latest log file (for example, to Telegram or by email). The log contains tracks, sensors and events for analysing how the navigation works."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f (\u0448\u0435\u0441\u0442\u0435\u0440\u043d\u044f)"

    const-string v5, "Settings (gear)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0432\u0456\u0434\u043a\u0430, \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u043b\u043e\u0433\u0443 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443, \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430, \u0430\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a, \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f, \u043a\u043b\u044e\u0447 Mapbox, \u043f\u043e\u0440\u043e\u0433\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u0434\u0430\u0442\u0447\u0438\u043a\u0456\u0432, \u043a\u0430\u043c\u0435\u0440\u0438, \u043a\u0430\u0440\u0442\u0430, \u043e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430, \u043e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0456 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043b\u043e\u0433\u0438 \u0439 \u00ab\u041f\u0440\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a\u00bb."

    const-string v5, "Help, sending a log to the developer, subscription, trip analytics, updates, Mapbox key, guidance and sensor thresholds, cameras, map, offline map, offline search and offline routes, logs and \u201cAbout\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430"

    const-string v5, "Offline map"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043a\u0430\u0440\u0442\u0430\u00bb. \u041a\u0430\u0440\u0442\u0430 \u0431\u0435\u0440\u0435\u0442\u044c\u0441\u044f \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 (OpenFreeMap; \u043a\u043b\u044e\u0447 Mapbox \u0434\u043b\u044f \u043d\u0435\u0457 \u043d\u0435 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d). \u00ab\u041a\u0435\u0448\u0443\u0432\u0430\u0442\u0438 \u043a\u0430\u0440\u0442\u0443 \u0432\u0437\u0434\u043e\u0432\u0436 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u0443\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e): \u043f\u0456\u0441\u043b\u044f \u0432\u0438\u0431\u043e\u0440\u0443 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u0456\u0434\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u043c\u0443\u0433\u0430 \u00b11,2 \u043a\u043c \u0443\u0437\u0434\u043e\u0432\u0436 \u043d\u044c\u043e\u0433\u043e (\u0431\u043b\u0438\u0437\u044c\u043a\u043e 5-15 \u041c\u0411 \u043d\u0430 10 \u043a\u043c). \u00ab\u041a\u0435\u0448\u0443\u0432\u0430\u0442\u0438 \u043c\u043e\u044e \u043e\u0431\u043b\u0430\u0441\u0442\u044c\u00bb (\u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e): \u0442\u0440\u0438\u043c\u0430\u0454 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e\u044e \u043a\u0430\u0440\u0442\u0443 \u043d\u0430\u0432\u043a\u043e\u043b\u043e \u0432\u0430\u0448\u043e\u0433\u043e \u043c\u0456\u0441\u0446\u044f, \u0440\u0430\u0434\u0456\u0443\u0441 25, 50 \u0430\u0431\u043e 100 \u043a\u043c, \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u043b\u0438\u0448\u0435 \u043f\u043e Wi-Fi; \u043a\u043e\u043b\u0438 \u0432\u0438 \u0432\u0456\u0434\'\u0457\u0434\u0435\u0442\u0435 \u0434\u0430\u043b\u0435\u043a\u043e, \u043e\u0431\u043b\u0430\u0441\u0442\u044c \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0438\u0442\u044c\u0441\u044f. \u0411\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043a\u0435\u0448\u043e\u0432\u0430\u043d\u0456 \u0434\u0456\u043b\u044f\u043d\u043a\u0438 \u043c\u0430\u043b\u044e\u044e\u0442\u044c\u0441\u044f, \u043d\u043e\u0432\u0456 \u043d\u0456; \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u0436\u0435 \u043f\u043e\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u0438\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u043f\u0440\u0430\u0446\u044e\u0454, \u0430 \u043f\u043e\u0431\u0443\u0434\u043e\u0432\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u0456 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c. \u042f\u043a\u0449\u043e \u043a\u0430\u0440\u0442\u0430 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u043b\u0430\u0441\u044c \u0437\u043e\u0432\u0441\u0456\u043c, \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0456 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u043c\u0430\u043b\u044e\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u043f\u043e\u0440\u043e\u0436\u043d\u044c\u043e\u043c\u0443 \u0444\u043e\u043d\u0456."

    const-string v5, "Settings \u2192 \u201cOffline map\u201d. The map comes from the internet (OpenFreeMap; no Mapbox key needed for it). \u201cCache the map along the route\u201d (on by default): after you choose a route a \u00b11.2 km strip along it is preloaded (about 5-15 MB per 10 km). \u201cCache my area\u201d (off): keeps the map around your location loaded, radius 25, 50 or 100 km, by default only on Wi-Fi; when you move far away, the area moves too. Without internet cached areas are drawn, new ones are not; guidance along an already built route works, but building routes, address search and rerouting do not work without internet. If the map did not load at all, the route and arrow are drawn on an empty background."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441"

    const-string v5, "Offline address search"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441\u00bb. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0438 \u0442\u0438\u0445 \u043e\u0431\u043b\u0430\u0441\u0442\u0435\u0439, \u0434\u0435 \u0432\u0438 \u0431\u0443\u0432\u0430\u0454\u0442\u0435 (\u043a\u043e\u0436\u0435\u043d \u0432\u0456\u0434 \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u043e \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u0435\u0441\u044f\u0442\u043a\u0456\u0432 \u041c\u0411; \u0454 \u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u0432\u0441\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456\u00bb), \u043e\u0434\u0438\u043d \u0440\u0430\u0437. \u0421\u043f\u0438\u0441\u043e\u043a \u043e\u0431\u043b\u0430\u0441\u0442\u0435\u0439 \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u0438\u0439: \u0432\u0438\u0434\u043d\u043e \u043b\u0438\u0448\u0435 \u043e\u0431\u043b\u0430\u0441\u0442\u044c, \u0434\u0435 \u0432\u0438 \u0437\u0430\u0440\u0430\u0437, \u0456 \u0442\u0456, \u0434\u043b\u044f \u044f\u043a\u0438\u0445 \u0454 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f; \u0440\u0435\u0448\u0442\u0430 \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454\u0442\u044c\u0441\u044f \u0440\u044f\u0434\u043a\u043e\u043c \u00ab\u0423\u0441\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456 (N, \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e M) \u25bc\u00bb. \u0422\u043e\u0434\u0456 \u0440\u044f\u0434\u043e\u043a \u00ab\u041a\u0443\u0434\u0438 (\u0430\u0434\u0440\u0435\u0441\u0430)\u00bb \u0437\u043d\u0430\u0445\u043e\u0434\u0438\u0442\u044c \u0432\u0443\u043b\u0438\u0446\u0456, \u0431\u0443\u0434\u0438\u043d\u043a\u0438 (\"\u0425\u0440\u0435\u0449\u0430\u0442\u0438\u043a 22\", \"\u0412\u0435\u0440\u0445\u043e\u0432\u0438\u043d\u043d\u0430 87\"), \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u0456 \u043f\u0443\u043d\u043a\u0442\u0438 \u0456 \u043c\u0456\u0441\u0446\u044f (\u0430\u043f\u0442\u0435\u043a\u0430, \u0432\u043e\u043a\u0437\u0430\u043b) \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443, \u0437\u0430 \u043d\u0430\u0437\u0432\u0430\u043c\u0438 \u0443\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u043e\u044e \u0439 \u0440\u043e\u0441\u0456\u0439\u0441\u044c\u043a\u043e\u044e, \u0456\u0437 \u0432\u0438\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u043d\u044f\u043c \u0434\u0440\u0456\u0431\u043d\u0438\u0445 \u043f\u043e\u043c\u0438\u043b\u043e\u043a; \u0431\u043b\u0438\u0436\u0447\u0456 \u0434\u043e \u0432\u0430\u0441 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u0438 \u0432\u0433\u043e\u0440\u0456. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0439 \u0434\u0430\u043b\u0456 \u0434\u0430\u0454 \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a, \u0430 \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u0456\u0434\u043a\u0430\u0437\u0443\u0454, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0437\u043d\u0430\u0439\u0448\u043e\u0432. \u041a\u0430\u0442\u0430\u043b\u043e\u0433 \u0437\u0456\u0431\u0440\u0430\u043d\u043e \u0437 OpenStreetMap: \u0443 \u043c\u0456\u0441\u0442\u0456 \u0430\u0434\u0440\u0435\u0441\u0438 \u043f\u043e\u0432\u043d\u0456, \u0443 \u0441\u0435\u043b\u0430\u0445 \u0433\u0456\u0440\u0448\u0435."

    const-string v5, "Settings \u2192 \u201cOffline address search\u201d. Download the catalogs of the regions you visit (each from a few to a few dozen MB; there is a \u201cDownload all regions\u201d button), once. The region list is collapsed: only the region where you are now and those with updates are visible; the rest opens with the line \u201cAll regions (N, installed M) \u25bc\u201d. Then the \u201cWhere to (address)\u201d field finds streets, houses (\u201cKhreshchatyk 22\u201d, \u201cVerkhovynna 87\u201d), towns and places (pharmacy, station) without internet, by names in Ukrainian and Russian, with correction of small typos; results closer to you are on top. With internet online search keeps giving suggestions, and the catalog helps when there is no internet or online search found nothing. The catalog is built from OpenStreetMap: addresses are complete in cities and worse in villages."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438"

    const-string v5, "Offline routes"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u00ab\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438\u00bb. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438 (287 \u041c\u0411, \u043f\u0456\u0441\u043b\u044f \u0440\u043e\u0437\u043f\u0430\u043a\u0443\u0432\u0430\u043d\u043d\u044f 490 \u041c\u0411; \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi, \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0439\u0434\u0435 \u0443 \u0444\u043e\u043d\u0456 \u0439 \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u0456\u0441\u043b\u044f \u043e\u0431\u0440\u0438\u0432\u0443 \u0437\u0432\'\u044f\u0437\u043a\u0443). \u0422\u043e\u0434\u0456, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u0441\u0435\u0440\u0432\u0456\u0441 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u043d\u0435 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0432, \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0431\u0443\u0434\u0443\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456, \u0456 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0442\u0435\u0436 \u043f\u0440\u0430\u0446\u044e\u0454. \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0431\u0435\u0437 \u0437\u0430\u0442\u043e\u0440\u0456\u0432, \u0437\u043d\u0430\u043a\u0456\u0432 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0439 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432, \u043b\u0438\u0448\u0435 \u0434\u043b\u044f \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044f, \u043e\u0434\u0438\u043d \u0432\u0430\u0440\u0456\u0430\u043d\u0442. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u044f\u043a \u0440\u0430\u043d\u0456\u0448\u0435 (Mapbox \u0456\u0437 \u0432\u0430\u0448\u0438\u043c \u043a\u043b\u044e\u0447\u0435\u043c \u0430\u0431\u043e OSRM)."

    const-string v5, "Settings \u2192 \u201cOffline routes\u201d. Download the road graph of Ukraine (287 MB, 490 MB unpacked; better over Wi-Fi, the download runs in the background and continues after a connection drop). Then, when there is no internet or the online routing service did not answer, the route is built on the phone, and rerouting during guidance works too. An offline route has no traffic, speed-limit signs or traffic lights, is car only, one option. With internet routes are built as before (Mapbox with your key or OSRM)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u0438\u0448\u0435 \u0423\u043a\u0440\u0430\u0457\u043d\u0430"

    const-string v5, "Ukraine only"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423 \u0446\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f \u0442\u0456\u043b\u044c\u043a\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0430: \u0442\u043e\u0447\u043a\u0438 \u0437\u0430 \u0457\u0457 \u043c\u0435\u0436\u0430\u043c\u0438 (A, B, \u00ab\u0447\u0435\u0440\u0435\u0437\u00bb) \u043d\u0435 \u043f\u0440\u0438\u0439\u043c\u0430\u044e\u0442\u044c\u0441\u044f, \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u043f\u043e\u0448\u0443\u043a\u0443 \u0442\u0435\u0436 \u043f\u043e\u043a\u0430\u0437\u0443\u044e\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0432 \u0423\u043a\u0440\u0430\u0457\u043d\u0456, \u043c\u0430\u0440\u0448\u0440\u0443\u0442, \u0449\u043e \u0432\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0437\u0430 \u043c\u0435\u0436\u0456 \u043a\u0440\u0430\u0457\u043d\u0438, \u043d\u0435 \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "This version supports only Ukraine: points outside it (A, B, \u201cvia\u201d) are not accepted, search suggestions are shown only in Ukraine too, and a route that goes beyond the country is not offered."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f"

    const-string v5, "During guidance"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0440\u0445\u043d\u044f \u043f\u0430\u043d\u0435\u043b\u044c \u043c\u0430\u043d\u0435\u0432\u0440\u0443 \u0456 \u043d\u0438\u0436\u043d\u044f \u043f\u0430\u043d\u0435\u043b\u044c \u043a\u0435\u0440\u0443\u0432\u0430\u043d\u043d\u044f."

    const-string v5, "The top maneuver panel and the bottom control panel."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0430\u043d\u0435\u043b\u044c \u043c\u0430\u043d\u0435\u0432\u0440\u0443"

    const-string v5, "Maneuver panel"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0438\u043d\u044f \u043f\u0430\u043d\u0435\u043b\u044c \u0437\u0432\u0435\u0440\u0445\u0443: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u0434\u043e \u043c\u0430\u043d\u0435\u0432\u0440\u0443, \u0441\u0442\u0440\u0456\u043b\u043a\u0430, \u0456\u043d\u0441\u0442\u0440\u0443\u043a\u0446\u0456\u044f \u0456 \u00ab\u041f\u043e\u0442\u0456\u043c\u2026\u00bb (\u043d\u0430\u0441\u0442\u0443\u043f\u043d\u0438\u0439 \u043c\u0430\u043d\u0435\u0432\u0440)."

    const-string v5, "The blue panel at the top: distance to the maneuver, arrow, instruction and \u201cThen\u2026\u201d (the next maneuver)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u0435\u043e\u043b\u043e\u043a\u0430\u0446\u0456\u044e \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e"

    const-string v5, "Location is off"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0427\u0435\u0440\u0432\u043e\u043d\u0430 \u0441\u043c\u0443\u0433\u0430 \u0437\u0432\u0435\u0440\u0445\u0443: \u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u0430 \u0433\u0435\u043e\u043b\u043e\u043a\u0430\u0446\u0456\u044f, \u0442\u043e\u0436 \u043d\u0435\u043c\u0430\u0454 \u043d\u0456 GPS, \u043d\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0437\u0430 \u043c\u0435\u0440\u0435\u0436\u0435\u044e. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f, \u0449\u043e\u0431 \u0457\u0457 \u0443\u0432\u0456\u043c\u043a\u043d\u0443\u0442\u0438."

    const-string v5, "A red strip at the top: location is turned off on the phone, so there is neither GPS nor network position. Tapping opens settings to turn it on."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0430 \u0442\u0440\u0438\u0432\u043e\u0433\u0430"

    const-string v5, "Air raid alert"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0440\u0443\u0433\u043b\u0430 \u043f\u043e\u0437\u043d\u0430\u0447\u043a\u0430 \u043f\u0456\u0434 \u0437\u043d\u0430\u0447\u043a\u043e\u043c GPS: \u0447\u0435\u0440\u0432\u043e\u043d\u0430 \u0447\u0438 \u0436\u043e\u0432\u0442\u0430 \u0443 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456 \u0430\u0431\u043e \u043e\u0431\u043b\u0430\u0441\u0442\u0456 \u2014 \u0440\u0456\u0432\u0435\u043d\u044c \u0437\u0430 ukrainealarm (\u043d\u0430\u043f\u0440\u0438\u043a\u043b\u0430\u0434, \u00ab\u0414\u0440\u043e\u043d\u043e\u0432\u0430 \u0437\u0430\u0433\u0440\u043e\u0437\u0430 (\u0436\u043e\u0432\u0442\u0438\u0439 \u0440\u0456\u0432\u0435\u043d\u044c)\u00bb); \u0436\u043e\u0432\u0442\u0430 \u2014 \u0442\u0430\u043a\u043e\u0436 \u0442\u0440\u0438\u0432\u043e\u0433\u0430 \u043f\u043e\u0440\u0443\u0447 (\u0441\u0443\u0441\u0456\u0434\u043d\u0456\u0439 \u0440\u0430\u0439\u043e\u043d, \u0447\u0430\u0441\u0442\u0438\u043d\u0430 \u0440\u0430\u0439\u043e\u043d\u0443 \u0447\u0438 \u0456\u043d\u0448\u0438\u0439 \u0440\u0430\u0439\u043e\u043d \u043e\u0431\u043b\u0430\u0441\u0442\u0456). \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043f\u043e\u043a\u0430\u0437\u0443\u0454 \u043f\u043e\u0447\u0430\u0442\u043e\u043a, \u0440\u0456\u0432\u0435\u043d\u044c \u0456 \u0440\u0430\u0439\u043e\u043d, \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u0435 \u2014 \u0445\u043e\u0432\u0430\u0454. \u0421\u043c\u0443\u0433\u0430 \u0437\u0432\u0435\u0440\u0445\u0443 \u0437\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f \u043f\u0440\u0438 \u043d\u043e\u0432\u0456\u0439 \u0442\u0440\u0438\u0432\u043e\u0437\u0456 \u0447\u0438 \u0437\u043c\u0456\u043d\u0456 \u0440\u0456\u0432\u043d\u044f; \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0457\u0457 \u0437\u0433\u043e\u0440\u0442\u0430\u0454. \u041f\u0440\u043e \u043d\u043e\u0432\u0443 \u0442\u0440\u0438\u0432\u043e\u0433\u0443, \u0437\u043c\u0456\u043d\u0443 \u0440\u0456\u0432\u043d\u044f \u0439 \u0432\u0456\u0434\u0431\u0456\u0439 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u043a\u0430\u0436\u0435 \u0433\u043e\u043b\u043e\u0441\u043e\u043c (\u044f\u043a\u0449\u043e \u043e\u0437\u0432\u0443\u0447\u0435\u043d\u043d\u044f \u043d\u0435 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u0435), \u0430 \u043a\u043e\u043b\u0438 \u0432\u0456\u043d \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u0438\u0439 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u2014 \u0449\u0435 \u0439 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f\u043c. \u0414\u0430\u043d\u0456 ukrainealarm.com; \u0440\u0430\u0439\u043e\u043d \u0432\u0438\u0437\u043d\u0430\u0447\u0430\u0454\u0442\u044c\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456, \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 \u043d\u0435 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u044e\u0442\u044c\u0441\u044f."

    const-string v5, "A round badge under the GPS icon: red or yellow in your district or region \u2014 the level according to ukrainealarm (for example, \u201cDrone threat (yellow level)\u201d); yellow also means an alert nearby (neighboring district, part of a district or another district of the region). Tapping shows the start, level and district, tapping again hides it. The strip at the top appears on a new alert or a level change; tapping collapses it. The app announces a new alert, a level change and the all-clear by voice (if announcements are not off), and when minimized during guidance \u2014 also by notification. Data from ukrainealarm.com; the district is determined on the phone, coordinates are not sent."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u043d\u0430\u043a \u043b\u0456\u043c\u0456\u0442\u0443 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456"

    const-string v5, "Speed limit sign"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043d\u0430 \u0434\u0456\u043b\u044f\u043d\u0446\u0456 (\u0437\u0430 \u0434\u0430\u043d\u0438\u043c\u0438 Mapbox), \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0432 \u043b\u0456\u0432\u043e\u043c\u0443 \u043d\u0438\u0436\u043d\u044c\u043e\u043c\u0443 \u043a\u0443\u0442\u0456 \u043d\u0430\u0434 \u043f\u0430\u043d\u0435\u043b\u043b\u044e \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u0421\u0442\u0430\u0454 \u0447\u0435\u0440\u0432\u043e\u043d\u0438\u043c, \u043a\u043e\u043b\u0438 \u0432\u0438 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0443\u0454\u0442\u0435 \u043b\u0456\u043c\u0456\u0442 \u043f\u043e\u043d\u0430\u0434 \u0434\u043e\u043f\u0443\u0441\u043a."

    const-string v5, "The limit on the section (from Mapbox data), on the map in the bottom-left corner above the guidance panel. Turns red when you exceed the limit by more than the tolerance."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u043c\u0435\u0440\u0430 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456"

    const-string v5, "Speed camera"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043b\u0430\u0448\u043a\u0430 \u00ab\u041a\u0430\u043c\u0435\u0440\u0430 \u0447\u0435\u0440\u0435\u0437 N \u043c\u00bb \u0437 \u043b\u0456\u043c\u0456\u0442\u043e\u043c. \u0427\u0435\u0440\u0432\u043e\u043d\u0430, \u044f\u043a\u0449\u043e \u0432\u0438 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0443\u0454\u0442\u0435 \u043b\u0456\u043c\u0456\u0442 \u043a\u0430\u043c\u0435\u0440\u0438. \u0413\u043e\u043b\u043e\u0441 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0436\u0430\u0454 \u0437\u0430\u0437\u0434\u0430\u043b\u0435\u0433\u0456\u0434\u044c, \u0441\u0438\u0433\u043d\u0430\u043b \u0437\u0432\u0443\u0447\u0438\u0442\u044c \u043f\u0440\u0438 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0435\u043d\u043d\u0456 \u043f\u043e\u0431\u043b\u0438\u0437\u0443. \u0412\u0456\u0434\u0441\u0442\u0430\u043d\u0456 \u043d\u0430\u043b\u0430\u0448\u0442\u043e\u0432\u0443\u044e\u0442\u044c\u0441\u044f."

    const-string v5, "A tag \u201cCamera in N m\u201d with the limit. Red if you exceed the camera limit. The voice warns in advance, a beep sounds when speeding nearby. Distances are configurable."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "18:05 / 20,6 \u043a\u043c \u00b7 24 \u0445\u0432"

    const-string v5, "18:05 / 20.6 km \u00b7 24 min"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0431\u0443\u0442\u0442\u044f \u0439 \u0437\u0430\u043b\u0438\u0448\u043e\u043a"

    const-string v5, "Arrival and remaining"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0440\u0443\u043f\u043d\u043e \u2014 \u0447\u0430\u0441 \u043f\u0440\u0438\u0431\u0443\u0442\u0442\u044f, \u043f\u0456\u0434 \u043d\u0438\u043c \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u0434\u043e \u043a\u0456\u043d\u0446\u044f \u0439 \u0447\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456."

    const-string v5, "Large \u2014 the arrival time, below it the distance to the end and the travel time."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "0 \u043a\u043c/\u0433"

    const-string v5, "0 km/h"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0428\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0456 \u0434\u0436\u0435\u0440\u0435\u043b\u043e \u043f\u043e\u0437\u0438\u0446\u0456\u0457"

    const-string v5, "Speed and position source"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0434\u043d\u0438\u043c \u0440\u044f\u0434\u043a\u043e\u043c \u043f\u0456\u0434 \u0447\u0430\u0441\u043e\u043c \u043f\u0440\u0438\u0431\u0443\u0442\u0442\u044f. \u00abGPS\u00bb: \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0437\u0430 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0430\u043c\u0438. \u00abGPS?\u00bb: \u0441\u043b\u0430\u0431\u043a\u0438\u0439 \u0441\u0438\u0433\u043d\u0430\u043b. \u00ab\u2248 \u0440\u043e\u0437\u0440\u0430\u0445.\u00bb: \u043c\u0430\u0440\u043a\u0435\u0440 \u0432\u0435\u0434\u0435 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u043f\u043e \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u0445. \u00ab\u2248 \u0440\u043e\u0437\u0440\u0430\u0445.+\u043c\u0435\u0440.\u00bb: \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a, \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u0438\u0439 \u043c\u0435\u0440\u0435\u0436\u0435\u0432\u043e\u044e \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e. \u00ab\u0440\u0443\u0447\u043d\u0430\u00bb: \u0432\u0438 \u0449\u043e\u0439\u043d\u043e \u0437\u0441\u0443\u043d\u0443\u043b\u0438 \u043c\u0430\u0440\u043a\u0435\u0440. \u00ab\u2248 \u0441\u0442\u043e\u0457\u043c\u043e\u00bb: \u0434\u0430\u0442\u0447\u0438\u043a\u0438 \u043f\u043e\u043a\u0430\u0437\u0443\u044e\u0442\u044c \u0437\u0443\u043f\u0438\u043d\u043a\u0443. \u00ab\u21bb\u2026\u00bb: \u0442\u0440\u0438\u0432\u0430\u0454 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430."

    const-string v5, "One line under the arrival time. \u201cGPS\u201d: position by satellites. \u201cGPS?\u201d: weak signal. \u201c\u2248 calc.\u201d: the marker is led by sensor dead reckoning. \u201c\u2248 calc.+net\u201d: dead reckoning limited by the network position. \u201cmanual\u201d: you have just shifted the marker. \u201c\u2248 stopped\u201d: sensors show a stop. \u201c\u21bb\u2026\u201d: rerouting is in progress."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u22121:19 \u00b7 \u00b130\u043c"

    const-string v5, "GPS \u22121:19 \u00b7 \u00b130m"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 GPS"

    const-string v5, "No GPS"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0445\u0432\u0438\u043b\u0438\u043d \u043d\u0435\u043c\u0430\u0454 \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u043e\u0433\u043e GPS \u0456 \u043d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432 \u043c\u0430\u0440\u043a\u0435\u0440 \u043c\u043e\u0436\u0435 \u043f\u043e\u043c\u0438\u043b\u044f\u0442\u0438\u0441\u044f. \u00abGPS\u21ba\u00bb: \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u0434\u043e GPS \u043f\u043b\u0430\u0432\u043d\u043e."

    const-string v5, "How many minutes there is no trusted GPS and by how many meters the marker may be wrong. \u201cGPS\u21ba\u201d: the position returns to GPS smoothly."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u043f\u0440\u0430\u0432\u043a\u0430 \u0432\u043f\u0435\u0440\u0435\u0434"

    const-string v5, "Nudge forward"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0441\u0443\u0432\u0430\u0454 \u043c\u0430\u0440\u043a\u0435\u0440 \u043d\u0430 100 \u043c \u0443\u043f\u0435\u0440\u0435\u0434 \u0437\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c. \u0423\u0442\u0440\u0438\u043c\u0430\u043d\u043d\u044f \u043f\u043e\u0432\u0442\u043e\u0440\u044e\u0454 \u0437\u0456 \u0437\u0440\u043e\u0441\u0442\u0430\u044e\u0447\u0438\u043c \u043a\u0440\u043e\u043a\u043e\u043c (100, 200, 500, 1000 \u043c), \u043d\u0430 \u043a\u043d\u043e\u043f\u0446\u0456 \u0432\u0438\u0434\u043d\u043e \u0441\u0443\u043c\u0443. \u041f\u0456\u0441\u043b\u044f \u043f\u043e\u043f\u0440\u0430\u0432\u043a\u0438 30 \u0441 GPS \u0437 \u043d\u0435\u044e \u043d\u0435 \u0441\u043f\u0435\u0440\u0435\u0447\u0430\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "Shifts the marker 100 m forward along the route. Holding repeats with a growing step (100, 200, 500, 1000 m), the total is shown on the button. After a nudge GPS does not argue with it for 30 s."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u043f\u0440\u0430\u0432\u043a\u0430 \u043d\u0430\u0437\u0430\u0434"

    const-string v5, "Nudge back"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0441\u0443\u0432\u0430\u0454 \u043c\u0430\u0440\u043a\u0435\u0440 \u043d\u0430 100 \u043c \u043d\u0430\u0437\u0430\u0434. \u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0430, \u043a\u043e\u043b\u0438 \u043c\u0430\u0440\u043a\u0435\u0440 \u0432\u0438\u043f\u0435\u0440\u0435\u0434\u0438\u0432 \u0440\u0435\u0430\u043b\u044c\u043d\u0443 \u043c\u0430\u0448\u0438\u043d\u0443."

    const-string v5, "Shifts the marker 100 m back. Needed when the marker got ahead of the real car."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438"

    const-string v5, "Reroute"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0440\u0430\u0442\u0438, \u0437\u0432\u0456\u0434\u043a\u0438 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438: \u0437\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u0432\u0456\u0434 \u043c\u0435\u0440\u0435\u0436\u0456 (\u00b1100 \u043c, \u043a\u043e\u043b\u0438 GPS \u043d\u0435\u043c\u0430\u0454), \u0437\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u0430\u0431\u043e \u0437 \u0442\u043e\u0447\u043a\u0438, \u044f\u043a\u0443 \u0432\u0438 \u0432\u043a\u0430\u0436\u0435\u0442\u0435 \u043f\u0435\u0440\u0435\u0445\u0440\u0435\u0441\u0442\u044f\u043c. \u0422\u0443\u0442 \u0436\u0435 \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447 \u00ab\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0440\u0438 \u043d\u0430\u0434\u0456\u0439\u043d\u043e\u043c\u0443 GPS\u00bb (\u043d\u0435 \u0447\u0430\u0441\u0442\u0456\u0448\u0435 \u043d\u0456\u0436 \u0440\u0430\u0437 \u043d\u0430 20 \u0441); \u0431\u0435\u0437 GPS \u0434\u0456\u0454 \u043e\u043a\u0440\u0435\u043c\u0438\u0439 \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447 \u00ab\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 GPS\u00bb \u0443 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f\u0445. \u041d\u043e\u0432\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0431\u0443\u0434\u0443\u0454\u0442\u044c\u0441\u044f \u0432 \u043d\u0430\u043f\u0440\u044f\u043c\u043a\u0443, \u043a\u0443\u0434\u0438 \u0432\u0438 \u0457\u0434\u0435\u0442\u0435, \u0456 \u043d\u0435 \u043f\u043e\u0447\u0438\u043d\u0430\u0454\u0442\u044c\u0441\u044f \u0440\u043e\u0437\u0432\u043e\u0440\u043e\u0442\u043e\u043c, \u044f\u043a\u0449\u043e \u0454 \u0434\u043e\u0440\u043e\u0433\u0430 \u0432\u043f\u0435\u0440\u0435\u0434. \u042f\u043a\u0449\u043e \u0440\u043e\u0443\u0442\u0435\u0440 \u0434\u0430\u0432 \u043a\u0456\u043b\u044c\u043a\u0430 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0456\u0432, \u043e\u0431\u0435\u0440\u0456\u0442\u044c \u00ab\u0407\u0445\u0430\u0442\u0438 \u0446\u0438\u043c\u00bb \u0430\u0431\u043e \u00ab\u041b\u0438\u0448\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0438\u0439\u00bb."

    const-string v5, "Choose where to reroute from: by the network position (\u00b1100 m, when there is no GPS), by the position on the map or from a point you specify with the crosshair. The \u201cAuto-reroute when GPS is reliable\u201d switch is here too (no more than once per 20 s); without GPS a separate \u201cAuto-reroute without GPS\u201d switch in Settings applies. The new route is built in the direction you are heading and does not start with a U-turn if there is a road ahead. If the router gave several options, choose \u201cUse this\u201d or \u201cKeep old\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Leaving the route"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417 \u043d\u0430\u0434\u0456\u0439\u043d\u0438\u043c GPS \u0441\u0445\u0456\u0434 \u0437\u0430\u0440\u0430\u0445\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 \u0432\u0438 \u0434\u0430\u043b\u0456 \u0432\u0456\u0434 \u043b\u0456\u043d\u0456\u0457 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043d\u0456\u0436 \u0437\u0430\u0434\u0430\u043d\u043e \u0432 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f\u0445 (50 \u043c \u043f\u0440\u043e\u0442\u044f\u0433\u043e\u043c 8 \u0441), \u0430\u0431\u043e \u0440\u0430\u043d\u0456\u0448\u0435 \u2014 \u043a\u043e\u043b\u0438 \u0432\u0438 \u0432\u0436\u0435 \u0437\u0430 30 \u043c \u0432\u0456\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0456 \u0457\u0434\u0435\u0442\u0435 \u043d\u0435 \u0442\u0443\u0434\u0438, \u043a\u0443\u0434\u0438 \u0432\u0456\u043d \u0432\u0435\u0434\u0435 (\u043a\u0443\u0440\u0441 \u0440\u043e\u0437\u0445\u043e\u0434\u0438\u0442\u044c\u0441\u044f \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0443 \u0431\u0456\u043b\u044c\u0448 \u043d\u0456\u0436 \u043d\u0430 40\u00b0, 3 \u0441). \u041f\u043e\u043a\u0438 \u0432\u0438 \u043f\u043e\u0437\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c, \u043c\u0430\u0440\u043a\u0435\u0440 \u0441\u0442\u043e\u0457\u0442\u044c \u0442\u0430\u043c, \u0434\u0435 \u0432\u0438 \u0454 \u0437\u0430 GPS, \u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u043f\u043e\u043a\u0430\u0437\u0443\u0454 \u0432\u0430\u0448 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 \u043a\u0443\u0440\u0441, \u0430 \u043d\u0435 \u043d\u0430\u043f\u0440\u044f\u043c\u043e\u043a \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443."

    const-string v5, "With reliable GPS leaving is counted when you are farther from the route line than set in Settings (50 m for 8 s), or earlier \u2014 when you are already 30 m from the route and heading not where it leads (the heading differs from the route ahead by more than 40\u00b0, 3 s). While you are off the route, the marker stands where you are by GPS, and the arrow shows your real heading, not the route direction."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u21bb 8 \u0441"

    const-string v5, "\u21bb 8 s"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\'\u0457\u0445\u0430\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb"

    const-string v5, "\u201cLooks like you left the route\u201d"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u043d\u0430\u0434\u0456\u0439\u043d\u043e\u0433\u043e GPS \u0441\u0445\u0456\u0434 \u043f\u043e\u043c\u0456\u0442\u0438\u043b\u0438 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f (\u043f\u043e\u0432\u043e\u0440\u043e\u0442, \u0449\u043e \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u0436\u043e\u0434\u043d\u0438\u043c \u043c\u0430\u043d\u0435\u0432\u0440\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043d\u0430\u043f\u0440\u0438\u043a\u043b\u0430\u0434 \u0440\u043e\u0437\u0432\u043e\u0440\u043e\u0442), \u043c\u0435\u0440\u0435\u0436\u0430 (\u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u0430\u043b\u0435\u043a\u043e \u0432\u0456\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443) \u0430\u0431\u043e \u0441\u0443\u043c\u043d\u0456\u0432\u043d\u0438\u0439 GPS: \u043f\u043e\u043c\u0430\u0440\u0430\u043d\u0447\u0435\u0432\u0430 \u043f\u043b\u0430\u0448\u043a\u0430 \u0437 \u0432\u0456\u0434\u043b\u0456\u043a\u043e\u043c \u0441\u0435\u043a\u0443\u043d\u0434. \u00ab\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u0437\u0430\u0440\u0430\u0437\u00bb \u2014 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0454 \u043e\u0434\u0440\u0430\u0437\u0443; \u00ab\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438\u00bb \u2014 \u043b\u0438\u0448\u0438\u0442\u044c \u0441\u0442\u0430\u0440\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0456 \u043d\u0435 \u0437\u0430\u043f\u0438\u0442\u0430\u0454 \u0437\u043d\u043e\u0432\u0443 \u043d\u0430\u0439\u0431\u043b\u0438\u0436\u0447\u0456 \u043f\u0456\u0432\u0442\u043e\u0440\u0438 \u0445\u0432\u0438\u043b\u0438\u043d\u0438. \u042f\u043a\u0449\u043e \u043d\u0435 \u043d\u0430\u0442\u0438\u0441\u043d\u0443\u0442\u0438 \u043d\u0456\u0447\u043e\u0433\u043e, \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0454 \u0441\u0430\u043c\u0430 \u2014 \u0430\u0431\u043e, \u044f\u043a\u0449\u043e \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u00ab\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 GPS\u00bb, \u043f\u043e\u0447\u0435\u043a\u0430\u0454 \u0432\u0430\u0448\u043e\u0457 \u043a\u043d\u043e\u043f\u043a\u0438 \u0445\u0432\u0438\u043b\u0438\u043d\u0443. \u0412\u0438\u044f\u0432\u043b\u0435\u043d\u043d\u044f \u0432\u0438\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447\u0435\u043c \u00ab\u0412\u0438\u044f\u0432\u043b\u044f\u0442\u0438 \u0441\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0431\u0435\u0437 GPS\u00bb."

    const-string v5, "Without reliable GPS leaving was noticed by the gyroscope (a turn that matches no route maneuver, for example a U-turn), the network (position far from the route) or doubtful GPS: an orange tag with a seconds countdown. \u201cReroute now\u201d reroutes at once; \u201cCancel\u201d keeps the old route and does not ask again for the next minute and a half. If you press nothing, it reroutes by itself \u2014 or, if \u201cAuto-reroute without GPS\u201d is off, waits for your button for a minute. Detection is switched off with the \u201cDetect leaving the route without GPS\u201d switch."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u00bb"

    const-string v5, "\u201cLooks like you missed the turn\u201d"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0415\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u043e, \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u0412\u0435\u0434\u0435\u043d\u043d\u044f). \u0411\u0435\u0437 GPS \u043c\u0430\u0440\u043a\u0435\u0440 \u0447\u0435\u043a\u0430\u0454 \u0431\u0456\u043b\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443, \u0430 \u043c\u0430\u0448\u0438\u043d\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0430 \u0437\u0430\u0434\u0430\u043d\u0443 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c (250 \u043c), \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0432\u0448\u0438 \u043a\u0435\u0440\u043c\u043e: \u0442\u0430\u043a\u0430 \u0441\u0430\u043c\u0430 \u043f\u043b\u0430\u0448\u043a\u0430 \u0437 \u0432\u0456\u0434\u043b\u0456\u043a\u043e\u043c \u0456 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u043e\u044e. \u041c\u043e\u0436\u0435 \u0441\u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438 \u0445\u0438\u0431\u043d\u043e, \u0431\u043e \u0431\u0435\u0437 GPS \u043c\u0430\u0440\u043a\u0435\u0440 \u0447\u0430\u0441\u0442\u043e \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0434\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u0440\u0430\u043d\u0456\u0448\u0435 \u0437\u0430 \u043c\u0430\u0448\u0438\u043d\u0443."

    const-string v5, "Experimental, off by default (Settings \u2192 Guidance). Without GPS the marker waits near a turn, and the car, by sensors, has driven the set distance (250 m) without turning the wheel: the same tag with a countdown and rerouting. May trigger falsely, because without GPS the marker often reaches the turn earlier than the car."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u0437\u0430 \u0432\u0430\u0448\u043e\u044e \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u043f\u0456\u0441\u043b\u044f \u0442\u043e\u0433\u043e, \u044f\u043a \u0432\u0438 \u043f\u0435\u0440\u0435\u0441\u0443\u043d\u0443\u043b\u0438 \u0430\u0431\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u043b\u0438 \u043a\u0430\u0440\u0442\u0443."

    const-string v5, "Returns tracking of your position after you moved or rotated the map."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "REC \u0443 \u0432\u0435\u0434\u0456\u043d\u043d\u0456"

    const-string v5, "REC during guidance"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0430\u043a \u0441\u0430\u043c\u043e, \u044f\u043a \u0437\u0432\u0435\u0440\u0445\u0443: \u0447\u0435\u0440\u0432\u043e\u043d\u0438\u0439 \u0437 \u043a\u0440\u0430\u043f\u043a\u043e\u044e \u2014 \u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443 \u0439\u0434\u0435. \u041d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u0432\u043c\u0438\u043a\u0430\u0454 \u0430\u0431\u043e \u0432\u0438\u043c\u0438\u043a\u0430\u0454 \u0437\u0430\u043f\u0438\u0441."

    const-string v5, "Same as at the top: red with a dot \u2014 log recording is on. Tapping turns recording on or off."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f"

    const-string v5, "Stop guidance"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0432\u0435\u0440\u0448\u0443\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u0435\u043a\u0440\u0430\u043d \u043f\u043b\u0430\u043d\u0443\u0432\u0430\u043d\u043d\u044f."

    const-string v5, "Ends guidance and returns to the planning screen."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e \u043d\u0430 \u043a\u0430\u0440\u0442\u0456"

    const-string v5, "What is on the map"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u043d\u0430\u0447\u043a\u0438 \u0439 \u043b\u0456\u043d\u0456\u0457, \u044f\u043a\u0456 \u043c\u0430\u043b\u044e\u0454 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a."

    const-string v5, "Icons and lines drawn by the app."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0438\u043d\u044f \u0441\u0442\u0440\u0456\u043b\u043a\u0430"

    const-string v5, "Blue arrow"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u0437\u0430 \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u0438\u043c GPS."

    const-string v5, "Position by trusted GPS."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u2191 \u0411\u0435\u0437 GPS \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0441\u0442\u0430\u0432\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u0430\u0439\u0431\u043b\u0438\u0436\u0447\u0443 \u0434\u043e\u0440\u043e\u0433\u0443 \u0437\u0430 \u043a\u0443\u0440\u0441\u043e\u043c \u0440\u0443\u0445\u0443 (\u0448\u0432\u0438\u0434\u0448\u0435 \u0437\u0430 50 \u043a\u043c/\u0433\u043e\u0434 \u2014 \u043b\u0438\u0448\u0435 \u043d\u0430 \u0432\u0435\u043b\u0438\u043a\u0456 \u0434\u043e\u0440\u043e\u0433\u0438); \u043d\u0430\u0439\u0442\u043e\u0447\u043d\u0456\u0448\u0435 \u0437 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0430\u043c\u0438. \u0412\u0438\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0432 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u0412\u0435\u0434\u0435\u043d\u043d\u044f."

    const-string v5, "\u2191 Without GPS the arrow is placed on the nearest road by heading (faster than 50 km/h \u2014 only on major roads); most accurate with offline routes. Turned off in Settings \u2192 Guidance."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434\u0441\u0442\u0435\u0436\u0435\u043d\u043d\u044f \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Tracking without a route"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043b\u0438 \u0442\u043e\u0447\u043a\u0438 A \u0456 B \u043d\u0435 \u0432\u0438\u0431\u0440\u0430\u043d\u043e, \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0430\u043c \u0432\u0435\u0434\u0435 \u0432\u0430\u0441 \u0437\u0430 \u043f\u043e\u0442\u043e\u0447\u043d\u0438\u043c\u0438 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0430\u043c\u0438: \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u043f\u043e\u043a\u0430\u0437\u0443\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u044e, \u043a\u0430\u043c\u0435\u0440\u0430 \u043e\u0431\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u043a\u0443\u0440\u0441\u043e\u043c. \u041f\u0456\u0434 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f\u043c \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0440\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 (\u043a\u0443\u0440\u0441 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u0456 \u043d\u0430\u043f\u0440\u044f\u043c\u043a\u043e\u043c \u043c\u0435\u0440\u0435\u0436\u0435\u0432\u043e\u0433\u043e \u0442\u0440\u0435\u043a\u0443, \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u0437\u0430 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u043c GPS \u0456 \u043c\u0435\u0440\u0435\u0436\u0435\u044e), \u043c\u0435\u0440\u0435\u0436\u0435\u0432\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0457\u0457 \u043f\u043e\u043f\u0440\u0430\u0432\u043b\u044f\u044e\u0442\u044c. \u0411\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u0434\u043e \u0434\u043e\u0440\u0456\u0433 \u043d\u0435\u043c\u0430\u0454, \u0442\u043e\u043c\u0443 \u043f\u043e\u0445\u0438\u0431\u043a\u0430 \u0440\u043e\u0441\u0442\u0435 \u0437 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u043d\u044e (\u0441\u0456\u0440\u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0437 \u043a\u043e\u043b\u043e\u043c). \u042f\u043a\u0449\u043e \u0432\u0438 \u0432\u0438\u0431\u0440\u0430\u043b\u0438 \u0442\u043e\u0447\u043a\u0438 \u0430\u0431\u043e \u043f\u043e\u0431\u0443\u0434\u0443\u0432\u0430\u043b\u0438 \u043c\u0430\u0440\u0448\u0440\u0443\u0442, \u043a\u0430\u043c\u0435\u0440\u0430 \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u0454 \u0441\u0442\u0435\u0436\u0438\u0442\u0438 \u0441\u0430\u043c\u0430, \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "When points A and B are not chosen, the app guides you by current coordinates itself: the arrow shows the position, the camera rotates with the heading. Under jamming the position is computed from sensors (heading by gyroscope and the direction of the network track, speed by the last GPS and network), network positions correct it. Without a route there is no road snapping, so the error grows with distance (grey arrow with a circle). If you chose points or built a route, the camera stops following by itself, the arrow stays."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0456\u0440\u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0437 \u043a\u043e\u043b\u043e\u043c"

    const-string v5, "Grey arrow with a circle"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u0432\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0431\u0435\u0437 \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u043e\u0433\u043e GPS. \u041a\u043e\u043b\u043e \u043f\u043e\u043a\u0430\u0437\u0443\u0454 \u043c\u043e\u0436\u043b\u0438\u0432\u0443 \u043f\u043e\u0445\u0438\u0431\u043a\u0443: \u0447\u0438\u043c \u0434\u043e\u0432\u0448\u0435 \u043d\u0435\u043c\u0430\u0454 GPS, \u0442\u0438\u043c \u0432\u043e\u043d\u043e \u0431\u0456\u043b\u044c\u0448\u0435."

    const-string v5, "A computed position without trusted GPS. The circle shows the possible error: the longer there is no GPS, the larger it is."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u00b1800 \u043c"

    const-string v5, "\u00b1800 m"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u00ab\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u043b\u0438\u0448\u0435 \u0437\u0430 \u0432\u0435\u0436\u0435\u044e \u0437\u0432\'\u044f\u0437\u043a\u0443\u00bb"

    const-string v5, "\u201cPosition only by a cell tower\u201d"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043a\u043e\u043b\u0438 \u043d\u0435\u043c\u0430\u0454 \u043d\u0456 GPS, \u043d\u0456 \u0442\u043e\u0447\u043d\u043e\u0457 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0437\u0430 \u043c\u0435\u0440\u0435\u0436\u0435\u044e: \u0441\u0456\u0440\u0435 \u043a\u043e\u043b\u043e \u043d\u0430\u0432\u043a\u043e\u043b\u043e \u0432\u0435\u0436\u0456 \u0437\u0432\'\u044f\u0437\u043a\u0443 \u0439 \u043f\u0456\u0434\u043f\u0438\u0441 \u0437 \u043f\u043e\u0445\u0438\u0431\u043a\u043e\u044e (\u0431\u0443\u0432\u0430\u0454 \u043a\u0456\u043b\u043e\u043c\u0435\u0442\u0440 \u0456 \u0431\u0456\u043b\u044c\u0448\u0435). \u0426\u0435 \u043d\u0435 \u0432\u0430\u0448\u0435 \u0442\u043e\u0447\u043d\u0435 \u043c\u0456\u0441\u0446\u0435, \u0430 \u043b\u0438\u0448\u0435 \u0440\u0430\u0439\u043e\u043d. \u0417\u043d\u0438\u043a\u0430\u0454, \u0449\u043e\u0439\u043d\u043e \u0437\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f GPS \u0430\u0431\u043e \u0442\u043e\u0447\u043d\u0456\u0448\u0430 \u043c\u0435\u0440\u0435\u0436\u0430."

    const-string v5, "Without a route, when there is neither GPS nor an accurate network position: a grey circle around a cell tower and a label with the error (can be a kilometer or more). It is not your exact place, only an area. Disappears as soon as GPS or a more accurate network appears."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u043c\u0435\u0440\u0438 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456"

    const-string v5, "Speed cameras"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u043d\u0430\u0447\u043a\u0438 \u043a\u0430\u043c\u0435\u0440 \u0456\u0437 \u0447\u0438\u0441\u043b\u043e\u043c \u043b\u0456\u043c\u0456\u0442\u0443. \u041a\u043e\u0436\u043d\u0430 \u043a\u0430\u043c\u0435\u0440\u0430 \u043f\u043e\u043a\u0430\u0437\u0443\u0454 \u043d\u0430\u043f\u0440\u044f\u043c\u043e\u043a, \u0443 \u044f\u043a\u043e\u043c\u0443 \u0434\u0456\u0454. \u0412\u0438\u0434\u043d\u043e \u0437 \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0443 11."

    const-string v5, "Camera icons with the limit number. Each camera shows the direction it applies to. Visible from zoom 11."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0438"

    const-string v5, "Traffic lights"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u043d\u0430\u0447\u043e\u043a \u043d\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456 (\u0434\u0430\u043d\u0456 Mapbox), \u0437 \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0443 13,5. \u0411\u0435\u0437 GPS \u0443 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u0443 \u0432\u0440\u0430\u0445\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u043c\u043e\u0436\u043b\u0438\u0432\u0456\u0441\u0442\u044c \u0441\u0442\u043e\u044f\u043d\u043d\u044f \u0431\u0456\u043b\u044f \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0430."

    const-string v5, "An icon on the route (Mapbox data), from zoom 13.5. Without GPS the calculation accounts for possible standing at a traffic light."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u0435\u0436\u0430\u0447\u0456 \u043f\u043e\u043b\u0456\u0446\u0435\u0439\u0441\u044c\u043a\u0456"

    const-string v5, "Speed bumps"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0416\u043e\u0432\u0442\u0438\u0439 \u0437\u043d\u0430\u0447\u043e\u043a \u0456\u0437 \u00ab\u0433\u043e\u0440\u0431\u043e\u043c\u00bb \u043d\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456, \u0437 \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0443 14 (\u0431\u0430\u0437\u0430 \u0437 OpenStreetMap, \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0435\u0437 \u043c\u0435\u0440\u0435\u0436\u0456). \u0420\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u0431\u0435\u0437 GPS \u043f\u043b\u0430\u0432\u043d\u043e \u0441\u043f\u043e\u0432\u0456\u043b\u044c\u043d\u044e\u0454 \u043c\u0430\u0440\u043a\u0435\u0440 \u043f\u0435\u0440\u0435\u0434 \u043d\u0438\u043c\u0438."

    const-string v5, "A yellow icon with a \u201chump\u201d on the route, from zoom 14 (OpenStreetMap database, works offline). Dead reckoning without GPS smoothly slows the marker before them."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u043e\u043c\u0435\u0440\u0438 \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432"

    const-string v5, "House numbers"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\'\u044f\u0432\u043b\u044f\u044e\u0442\u044c\u0441\u044f \u0437 \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0443 16."

    const-string v5, "Appear from zoom 16."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043b\u044c\u043e\u0440\u043e\u0432\u0456 \u043a\u0440\u0430\u043f\u043a\u0438 \u043f\u043e\u0437\u0438\u0446\u0456\u0439"

    const-string v5, "Colored position dots"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457, \u044f\u043a\u0456 \u043f\u0440\u0438\u0439\u043c\u0430\u0454 \u0442\u0435\u043b\u0435\u0444\u043e\u043d: \u0437\u0435\u043b\u0435\u043d\u0430 \u2014 GPS \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u0438\u0439, \u043f\u043e\u043c\u0430\u0440\u0430\u043d\u0447\u0435\u0432\u0430 \u2014 GPS \u0441\u0443\u043c\u043d\u0456\u0432\u043d\u0438\u0439, \u0447\u0435\u0440\u0432\u043e\u043d\u0430 \u2014 GPS \u0432\u0456\u0434\u0445\u0438\u043b\u0435\u043d\u0438\u0439 (\u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f \u0447\u0438 \u043f\u0456\u0434\u043c\u0456\u043d\u0430), \u043f\u0443\u0440\u043f\u0443\u0440\u043d\u0435 \u043a\u0456\u043b\u044c\u0446\u0435 \u2014 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0437\u0430 \u043c\u0435\u0440\u0435\u0436\u0435\u044e (\u0432\u0435\u0436\u0456, Wi-Fi). \u041a\u0440\u0430\u043f\u043a\u0438 \u043f\u043e\u0441\u0442\u0443\u043f\u043e\u0432\u043e \u0431\u043b\u044f\u043a\u043d\u0443\u0442\u044c \u0456 \u0437\u043d\u0438\u043a\u0430\u044e\u0442\u044c \u0437\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434 (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c 20, \u043c\u0435\u0440\u0435\u0436\u0435\u0432\u0456 \u0443\u0434\u0432\u0456\u0447\u0456 \u0434\u043e\u0432\u0448\u0435); \u0442\u0435\u0440\u043c\u0456\u043d \u0437\u043c\u0456\u043d\u044e\u0454\u0442\u044c\u0441\u044f \u0432 \u00ab\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430\u00bb, 0 \u0432\u0438\u043c\u0438\u043a\u0430\u0454 \u043a\u0440\u0430\u043f\u043a\u0438. \u0420\u043e\u0437\u0431\u0456\u0436\u043d\u0456\u0441\u0442\u044c \u0437\u0435\u043b\u0435\u043d\u043e\u0457 \u043a\u0440\u0430\u043f\u043a\u0438 \u0439 \u043f\u0443\u0440\u043f\u0443\u0440\u043d\u043e\u0433\u043e \u043a\u0456\u043b\u044c\u0446\u044f \u0434\u043e\u043f\u043e\u043c\u0430\u0433\u0430\u0454 \u043f\u043e\u0431\u0430\u0447\u0438\u0442\u0438, \u0449\u043e GPS \u0431\u0440\u0435\u0448\u0435."

    const-string v5, "The latest positions the phone receives: green \u2014 GPS trusted, orange \u2014 GPS doubtful, red \u2014 GPS rejected (jamming or spoofing), purple ring \u2014 network position (towers, Wi-Fi). The dots gradually fade and disappear in a few seconds (20 by default, network ones twice as long); the time is changed in \u201cSettings \u2192 Map\u201d, 0 turns the dots off. A discrepancy between the green dot and the purple ring helps to see that GPS is lying."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043b\u0438 GPS \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e \u0430\u0431\u043e \u0431\u0440\u0435\u0448\u0435"

    const-string v5, "When GPS is jammed or lying"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u042f\u043a \u043f\u0440\u0430\u0446\u044e\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0437\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u043c."

    const-string v5, "How dead-reckoning guidance works."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e \u0432\u0456\u0434\u0431\u0443\u0432\u0430\u0454\u0442\u044c\u0441\u044f"

    const-string v5, "What happens"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0432\u0456\u0440\u0435\u043d\u0438\u0439 GPS \u0437\u043d\u0438\u043a\u0430\u0454 (\u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f, \u043f\u0456\u0434\u043c\u0456\u043d\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0430\u0431\u043e \u0442\u0443\u043d\u0435\u043b\u044c). \u041c\u0430\u0440\u043a\u0435\u0440 \u043d\u0435 \u0437\u0430\u0432\u043c\u0438\u0440\u0430\u0454: \u0432\u0456\u043d \u0457\u0434\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u0456\u0437 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044e, \u044f\u043a\u0443 \u043e\u0446\u0456\u043d\u0435\u043d\u043e \u0437\u0430 GPS \u0434\u043e \u0432\u0442\u0440\u0430\u0442\u0438, \u043b\u0456\u043c\u0456\u0442\u043e\u043c \u0434\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u0432\u0456\u0434 \u043c\u0435\u0440\u0435\u0436\u0456."

    const-string v5, "Trusted GPS disappears (jamming, spoofing or a tunnel). The marker does not freeze: it moves along the route at the speed estimated by GPS before the loss, the road limit and the network position."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0443\u043f\u0438\u043d\u043a\u0438"

    const-string v5, "Stops"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440 \u0456 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0443 \u0432\u0438\u0437\u043d\u0430\u0447\u0430\u044e\u0442\u044c, \u0449\u043e \u043c\u0430\u0448\u0438\u043d\u0430 \u0441\u0442\u043e\u0457\u0442\u044c (\u043f\u0440\u0430\u0446\u044e\u0454 \u0456 \u0432 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u043c\u043e\u0431\u0456\u043b\u044f, \u0434\u0435 \u043d\u0435\u043c\u0430\u0454 \u0432\u0456\u0431\u0440\u0430\u0446\u0456\u0457 \u0434\u0432\u0438\u0433\u0443\u043d\u0430). \u041c\u0430\u0440\u043a\u0435\u0440 \u0437\u0443\u043f\u0438\u043d\u044f\u0454\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 \u0437\u0443\u043f\u0438\u043d\u0438\u043b\u0438\u0441\u044f \u0432\u0438."

    const-string v5, "The phone\'s accelerometer and gyroscope determine that the car is standing (works for electric cars too, where there is no engine vibration). The marker stops when you stop."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0432\u043e\u0440\u043e\u0442\u0438"

    const-string v5, "Turns"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0435\u0440\u0435\u0434 \u043a\u0440\u0443\u0442\u0438\u043c \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043c\u0430\u0440\u043a\u0435\u0440 \u0447\u0435\u043a\u0430\u0454, \u043f\u043e\u043a\u0438 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u043d\u0435 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c, \u0449\u043e \u0432\u0438 \u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u043b\u0438 \u043a\u0435\u0440\u043c\u043e (\u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0438\u0439 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0442\u0435\u0436 \u0440\u043e\u0437\u043f\u0456\u0437\u043d\u0430\u0454\u0442\u044c\u0441\u044f), \u0456 \u043b\u0438\u0448\u0435 \u0442\u043e\u0434\u0456 \u00ab\u043f\u0440\u0438\u0449\u0456\u043f\u043b\u044e\u0454\u0442\u044c\u0441\u044f\u00bb \u0434\u043e \u043f\u0435\u0440\u0435\u0445\u0440\u0435\u0441\u0442\u044f. \u0422\u0430\u043a \u043c\u0430\u0440\u043a\u0435\u0440 \u043d\u0435 \u043f\u0440\u043e\u0457\u0436\u0434\u0436\u0430\u0454 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0440\u0430\u043d\u0456\u0448\u0435 \u0437\u0430 \u0432\u0430\u0441."

    const-string v5, "Before a sharp turn of the route the marker waits until the gyroscope confirms that you really turned the wheel (a slow turn is recognized too), and only then \u201csnaps\u201d to the intersection. This way the marker does not pass a turn before you."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0435\u0440\u0435\u0436\u0430"

    const-string v5, "Network"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u0432\u0456\u0434 Wi-Fi \u0456 \u0432\u0438\u0448\u043e\u043a \u043e\u0431\u043c\u0435\u0436\u0443\u0454 \u043f\u043e\u0445\u0438\u0431\u043a\u0443 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u0443. \u0413\u0440\u0443\u0431\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 (\u043f\u043e\u0445\u0438\u0431\u043a\u0430 300 \u043c \u0456 \u0431\u0456\u043b\u044c\u0448\u0435) \u043c\u0430\u0440\u043a\u0435\u0440 \u043d\u0435 \u0437\u0441\u0443\u0432\u0430\u044e\u0442\u044c. \u042f\u043a\u0449\u043e \u043a\u0456\u043b\u044c\u043a\u0430 \u0442\u043e\u0447\u043d\u0438\u0445 \u043f\u043e\u0437\u0438\u0446\u0456\u0439 \u0437\u0430 \u043c\u0435\u0440\u0435\u0436\u0435\u044e \u043f\u043e\u043a\u0430\u0437\u0443\u044e\u0442\u044c, \u0449\u043e \u0432\u0438 \u043f\u043e\u0437\u0430\u0434\u0443, \u043c\u0430\u0440\u043a\u0435\u0440 \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u043d\u0430\u0437\u0430\u0434 (\u043d\u0435 \u0431\u0456\u043b\u044c\u0448\u0435 \u043d\u0456\u0436 \u043d\u0430 300 \u043c \u0437\u0430 \u0440\u0430\u0437 \u0456 \u043d\u0435 \u0437\u0430 \u043f\u043e\u0432\u043e\u0440\u043e\u0442, \u044f\u043a\u0438\u0439 \u0443\u0436\u0435 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0432 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f). \u041a\u043e\u043b\u0438 GPS \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f, \u043c\u0430\u0440\u043a\u0435\u0440 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0456\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0437 \u043d\u0438\u043c \u043f\u043b\u0430\u0432\u043d\u043e."

    const-string v5, "The position from Wi-Fi and towers limits the dead-reckoning error. Rough positions (error 300 m and more) do not move the marker. If several accurate network positions show that you are behind, the marker goes back (no more than 300 m at a time and not past a turn already confirmed by the gyroscope). When GPS returns, the marker synchronizes with it smoothly."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u0443\u0447\u043d\u0430 \u043f\u043e\u043f\u0440\u0430\u0432\u043a\u0430"

    const-string v5, "Manual correction"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u042f\u043a\u0449\u043e \u0431\u0430\u0447\u0438\u0442\u0435, \u0449\u043e \u043c\u0430\u0440\u043a\u0435\u0440 \u0432\u0438\u043f\u0435\u0440\u0435\u0434\u0436\u0430\u0454 \u0430\u0431\u043e \u0432\u0456\u0434\u0441\u0442\u0430\u0454, \u043a\u043e\u0440\u0438\u0441\u0442\u0443\u0439\u0442\u0435\u0441\u044f \u00ab\u2191100\u00bb \u0456 \u00ab\u2193100\u00bb."

    const-string v5, "If you see that the marker is ahead or behind, use \u201c\u2191100\u201d and \u201c\u2193100\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f"

    const-string v5, "Settings"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043d\u043e\u043f\u043a\u0430 \u2699 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u043f\u043b\u0430\u043d\u0443\u0432\u0430\u043d\u043d\u044f."

    const-string v5, "The \u2699 button on the planning screen."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0430\u0448 \u0442\u0430\u0440\u0438\u0444: \u00ab\u0423\u0441\u0456 \u0444\u0443\u043d\u043a\u0446\u0456\u0457 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0456 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c\u00bb (\u043f\u043e\u043a\u0438 \u0442\u0430\u0440\u0438\u0444\u0438 \u043d\u0435 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e), \u00ab\u041f\u0440\u043e\u0431\u043d\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434: \u0449\u0435 N \u0434\u043d\u0456\u0432\u00bb, \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0434\u043e \u0434\u0430\u0442\u0438 \u0430\u0431\u043e \u00ab\u0411\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439\u00bb \u0437 \u043b\u0456\u043c\u0456\u0442\u043e\u043c \u043f\u043e\u0431\u0443\u0434\u043e\u0432 \u043d\u0430 \u0441\u044c\u043e\u0433\u043e\u0434\u043d\u0456. "

    const-string v5, "Your plan: \u201cAll features are available without limits\u201d (while plans are not enabled), \u201cTrial period: N more days\u201d, a subscription until a date, or \u201cFree\u201d with a limit of routes built today. "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043d\u043e\u043f\u043a\u0438 \u00ab\u0412\u0456\u0434\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443\u00bb \u0439 \u00ab\u041f\u0456\u0434\u0442\u0440\u0438\u043c\u043a\u0430 \u0432 Telegram\u00bb \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u044e\u0442\u044c \u0431\u043e\u0442\u0430 @Blind_Driver_bot \u0456 \u0437\'\u044f\u0432\u043b\u044f\u044e\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 \u0442\u0430\u0440\u0438\u0444\u0438 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e."

    const-string v5, "The \u201cRestore subscription\u201d and \u201cSupport in Telegram\u201d buttons open the @Blind_Driver_bot bot and appear when plans are enabled."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043d\u043e\u043f\u043a\u0430 \u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443\u00bb (\u00ab\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443\u00bb) \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0435\u0437 Telegram: \u043e\u0431\u0435\u0440\u0456\u0442\u044c \u0442\u0435\u0440\u043c\u0456\u043d (1, 3, 6 \u043c\u0456\u0441\u044f\u0446\u0456\u0432 \u0430\u0431\u043e \u0440\u0456\u043a) \u0456 \u0437\u0430 \u0431\u0430\u0436\u0430\u043d\u043d\u044f\u043c \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f, \u0434\u0430\u043b\u0456 \u00ab\u0421\u043f\u043b\u0430\u0442\u0438\u0442\u0438\u00bb \u0432\u0456\u0434\u043a\u0440\u0438\u0454 \u0441\u0442\u043e\u0440\u0456\u043d\u043a\u0443 \u043e\u043f\u043b\u0430\u0442\u0438 \u0432 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0456, \u0430 \u00abQR-\u043a\u043e\u0434\u00bb \u0434\u043e\u0437\u0432\u043e\u043b\u044f\u0454 \u0441\u043f\u043b\u0430\u0442\u0438\u0442\u0438 \u0437 \u0456\u043d\u0448\u043e\u0433\u043e \u043f\u0440\u0438\u0441\u0442\u0440\u043e\u044e. \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043f\u0440\u0438\u0432\'\u044f\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0434\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443; \u043d\u0430 \u0456\u043d\u0448\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0457\u0457 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0438\u0442\u044c \u043a\u043e\u0434: \u00ab\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb \u043d\u0430 \u0441\u0442\u0430\u0440\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456, \u00ab\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb \u043d\u0430 \u043d\u043e\u0432\u043e\u043c\u0443 (\u043a\u043e\u0434 \u0434\u0456\u0454 15 \u0445\u0432\u0438\u043b\u0438\u043d, \u0441\u043f\u0440\u0430\u0446\u044c\u043e\u0432\u0443\u0454 \u0440\u0430\u0437, \u0441\u0442\u0430\u0440\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u0432\u0442\u0440\u0430\u0447\u0430\u0454). \u00ab\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f\u00bb \u0432\u0438\u043c\u0438\u043a\u0430\u0454 \u043d\u0430\u0441\u0442\u0443\u043f\u043d\u0456 \u0441\u043f\u0438\u0441\u0430\u043d\u043d\u044f. \u0414\u043b\u044f \u0442\u0438\u0445, \u0445\u0442\u043e \u043c\u0430\u0454 Telegram, \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f \u00ab\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u0432 Telegram\u00bb, \u00ab\u0412\u0456\u0434\u043d\u043e\u0432\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443\u00bb \u0439 \u00ab\u041f\u0456\u0434\u0442\u0440\u0438\u043c\u043a\u0430 \u0432 Telegram\u00bb (\u0431\u043e\u0442 @Blind_Driver_bot); \u0443\u0441\u0435 \u0437\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f, \u043a\u043e\u043b\u0438 \u0442\u0430\u0440\u0438\u0444\u0438 \u0432\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u043e."

    const-string v5, "The \u201cSubscribe\u201d (\u201cExtend subscription\u201d) button works without Telegram: choose the term (1, 3, 6 months or a year) and optionally auto-renewal, then \u201cPay\u201d opens the payment page in the browser, and \u201cQR code\u201d lets you pay from another device. The subscription is bound to the app; to move it to another phone use a code: \u201cShow transfer code\u201d on the old phone, \u201cEnter transfer code\u201d on the new one (the code is valid for 15 minutes, works once, the old phone loses the subscription). \u201cCancel auto-renewal\u201d turns off further charges. For those who have Telegram, \u201cSubscribe in Telegram\u201d, \u201cRestore subscription\u201d and \u201cSupport in Telegram\u201d remain (bot @Blind_Driver_bot); everything appears when plans are enabled."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " \u041b\u0438\u0448\u0435 \u043f\u0456\u0441\u043b\u044f \u043d\u0430\u0442\u0438\u0441\u043a\u0430\u043d\u043d\u044f \u043d\u0430 \u043d\u0430\u0448 \u0441\u0435\u0440\u0432\u0435\u0440 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u044e\u0442\u044c\u0441\u044f \u043c\u043e\u0434\u0435\u043b\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0439 \u043d\u0435\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0432\u0456\u0434\u0431\u0438\u0442\u043e\u043a \u0439\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e ID, \u0449\u043e\u0431 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u043b\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f."

    const-string v5, " Only after you tap, the phone model and an irreversible fingerprint of its system ID are sent to our server, so the subscription can be restored after reinstalling."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a"

    const-string v5, "Trip analytics"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e\u0431\u0456\u0433, \u0447\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0439 \u043d\u0430 \u0441\u0442\u043e\u044f\u043d\u043a\u0430\u0445 \u0437\u0430 \u0434\u0435\u043d\u044c, \u0442\u0438\u0436\u0434\u0435\u043d\u044c \u0456 \u043c\u0456\u0441\u044f\u0446\u044c; \u043e\u0441\u043e\u0431\u0438\u0441\u0442\u0438\u0439 \u043a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442 \u0437\u0430\u0442\u043e\u0440\u0456\u0432, \u044f\u043a\u0438\u0439 \u0443\u0442\u043e\u0447\u043d\u044e\u0454 \u0447\u0430\u0441 \u043f\u0440\u0438\u0431\u0443\u0442\u0442\u044f \u0443 \u0432\u0430\u0440\u0456\u0430\u043d\u0442\u0430\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443."

    const-string v5, "Distance, travel and parking time per day, week and month; a personal traffic coefficient that refines the arrival time in route options."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443"

    const-string v5, "Send log to the developer"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439 \u043b\u043e\u0433, \u043e\u0431\u0440\u0430\u043d\u0456 \u0430\u0431\u043e \u0437\u0430 \u0434\u0435\u043d\u044c, \u0437 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u0435\u043c \u0456 \u0434\u0430\u043d\u0438\u043c\u0438 \u043f\u0440\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d. \u041f\u0435\u0440\u0435\u0434 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f\u043c \u0456 \u043f\u0440\u0438 \u00ab\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f\u00bb \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0431\u0456\u043b\u044f \u0441\u0442\u0430\u0440\u0442\u0443 \u0439 \u0444\u0456\u043d\u0456\u0448\u0443 \u0432\u0438\u0440\u0456\u0437\u0430\u044e\u0442\u044c\u0441\u044f (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c 300 \u043c; \u0432\u0438\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0432 \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041b\u043e\u0433\u0438). \u00ab\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439 \u043b\u043e\u0433\u00bb \u2014 \u043e\u0441\u0442\u0430\u043d\u043d\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0430 \u0434\u043e\u0432\u0448\u0430 \u0437\u0430 \u0445\u0432\u0438\u043b\u0438\u043d\u0443; \u0456\u043d\u0448\u0438\u0439 \u0444\u0430\u0439\u043b \u2014 \u00ab\u041e\u0431\u0440\u0430\u043d\u0456\u00bb. \u0412\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f\u043c \u0456 \u0432\u0456\u043a\u043d\u043e\u043c \u0443 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443, \u0442\u0430\u043c \u0436\u0435 \u043c\u043e\u0436\u043d\u0430 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0441\u0442\u0438 (\u0440\u043e\u0437\u0434\u0456\u043b \u00ab\u041b\u0438\u0441\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u0437 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u043e\u043c\u00bb)."

    const-string v5, "The latest log, selected ones or by day, with a comment and phone data. Before sending and on \u201cShare\u201d the positions near the start and finish are cut out (300 m by default; can be turned off in Settings \u2192 Logs). \u201cLatest log\u201d \u2014 the latest trip longer than a minute; another file \u2014 \u201cSelected\u201d. The developer\'s reply comes as a notification and a window in the app, where you can answer too (the \u201cCorrespondence with the developer\u201d section)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043c\u043e\u0457 \u0434\u0430\u043d\u0456"

    const-string v5, "Delete my data"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u2192 \u041f\u0440\u0438\u0432\u0430\u0442\u043d\u0456\u0441\u0442\u044c. \u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0432\u0438\u0434\u0430\u043b\u044f\u044e\u0442\u044c\u0441\u044f \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u043b\u043e\u0433\u0438, \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0434\u043e Telegram \u0456 \u0432\u0430\u0448\u0456 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0438; \u0434\u0456\u044e\u0447\u0430 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043f\u0440\u0438 \u0446\u044c\u043e\u043c\u0443 \u0432\u0442\u0440\u0430\u0447\u0430\u0454\u0442\u044c\u0441\u044f. \u041f\u043e\u0437\u043d\u0430\u0447\u043a\u0430 \u00ab\u0422\u0430\u043a\u043e\u0436 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456\u00bb \u0441\u0442\u0438\u0440\u0430\u0454 \u0439 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u0456 \u043b\u043e\u0433\u0438. \u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u0430\u0434\u0440\u0435\u0441\u0438 \u0439 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const-string v5, "About \u2192 Privacy. On the server the sent logs, the Telegram binding and your contacts are deleted; an active subscription is lost. The \u201cAlso delete trip logs on this phone\u201d checkbox erases the local logs too. Routes, addresses and settings stay on the phone."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043b\u044e\u0447 Mapbox"

    const-string v5, "Mapbox key"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0430\u0448 \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 (pk.\u2026) \u0434\u043b\u044f \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438. \u0411\u0435\u0437 \u043a\u043b\u044e\u0447\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u0447\u0435\u0440\u0435\u0437 OSRM \u0431\u0435\u0437 \u0437\u0430\u0442\u043e\u0440\u0456\u0432. \u041a\u043b\u044e\u0447 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u043c \u043b\u0438\u0448\u0435 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const-string v5, "Your public key (pk.\u2026) for routes with traffic. Without a key routes are built through OSRM without traffic. The key is stored encrypted on the phone only."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u043a\u0430\u043c\u0435\u0440\u0438"

    const-string v5, "Guidance and cameras"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0437 GPS \u0456 \u0431\u0435\u0437 GPS, \u0441\u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0435\u043d\u043d\u044f \u0431\u0456\u043b\u044f \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432 \u0456 \u043b\u0435\u0436\u0430\u0447\u0438\u0445, \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447\u0456 \u043f\u043e\u0432\u0435\u0434\u0456\u043d\u043a\u0438 \u0431\u0435\u0437 GPS (\u0432\u0438\u044f\u0432\u043b\u0435\u043d\u043d\u044f \u0441\u0445\u043e\u0434\u0443, \u0443\u0442\u0440\u0438\u043c\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u0434 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u043e\u043c, \u00ab\u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u00bb), \u043f\u043e\u0440\u043e\u0433\u0438 \u0441\u0445\u043e\u0434\u0443 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 (\u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0439 \u0456 \u0448\u0432\u0438\u0434\u043a\u0438\u0439), \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u00ab\u0412\u0438 \u043f\u0440\u0438\u0431\u0443\u043b\u0438\u00bb, \u0434\u0438\u0441\u0442\u0430\u043d\u0446\u0456\u0457 \u043a\u0430\u043c\u0435\u0440 \u0456 \u0434\u043e\u043f\u0443\u0441\u043a \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0435\u043d\u043d\u044f."

    const-string v5, "Auto-reroute with and without GPS, slowing down at traffic lights and bumps, no-GPS behavior switches (leave detection, holding before a turn, \u201cmissed turn\u201d), route-leaving thresholds (normal and fast), the \u201cYou have arrived\u201d distance, camera distances and speeding tolerance."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438"

    const-string v5, "Sensors"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0431\u043e\u0440\u0438 \u0434\u043b\u044f \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u00ab\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439\u00bb (\u0441\u0430\u043c \u043f\u0456\u0434\u043b\u0430\u0448\u0442\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u0456\u0434 \u0432\u0430\u0448\u0443 \u043c\u0430\u0448\u0438\u043d\u0443 \u0439 \u0442\u0440\u0438\u043c\u0430\u0447, \u043f\u043e\u043a\u0438 GPS \u0434\u043e\u0431\u0440\u0438\u0439, \u0456 \u043d\u0435 \u0434\u043e\u043f\u0443\u0441\u043a\u0430\u0454 \u0431\u0456\u043b\u044c\u0448\u0435 \u0445\u0438\u0431\u043d\u0438\u0445 \u0437\u0443\u043f\u0438\u043d\u043e\u043a, \u043d\u0456\u0436 \u0442\u0438\u043f\u043e\u0432\u0456 \u043f\u043e\u0440\u043e\u0433\u0438), \u00ab\u041e\u0431\u0435\u0440\u0435\u0436\u043d\u0438\u0439\u00bb \u0456 \u00ab\u0427\u0443\u0442\u043b\u0438\u0432\u0438\u0439\u00bb (\u0440\u0443\u0447\u043d\u0456, \u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u0456), \u0430 \u0442\u0430\u043a\u043e\u0436 \u0440\u043e\u0437\u0448\u0438\u0440\u0435\u043d\u0456 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438."

    const-string v5, "Sets for the stop detector: \u201cAutomatic\u201d (adjusts itself to your car and mount while GPS is good, and allows no more false stops than typical thresholds), \u201cCareful\u201d and \u201cSensitive\u201d (manual, experimental), as well as advanced parameters."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u043e\u0433\u0438"

    const-string v5, "Logs"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e\u0437\u0430\u043f\u0438\u0441 \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443 (\u0443 \u0432\u0438\u043f\u0443\u0449\u0435\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c), \u0440\u043e\u0437\u043c\u0456\u0440 \u043e\u0434\u043d\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430 \u043b\u043e\u0433\u0443 \u0439 \u00ab\u0417\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u043b\u043e\u0433\u0438 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456\u00bb: \u043b\u043e\u0433\u0438, \u0441\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 \u0432\u043a\u0430\u0437\u0430\u043d\u0443 \u043a\u0456\u043b\u044c\u043a\u0456\u0441\u0442\u044c \u0434\u043d\u0456\u0432, \u0432\u0438\u0434\u0430\u043b\u044f\u044e\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0456 \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443 (0 \u2014 \u043d\u0435 \u0432\u0438\u0434\u0430\u043b\u044f\u0442\u0438). \u0412\u0440\u0443\u0447\u043d\u0443 \u2014 \u00ab\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443\u00bb \u2192 \u00ab\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0456 \u043b\u043e\u0433\u0438 \u0437 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430\u2026\u00bb. \u0417\u0430\u043f\u0438\u0441 \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u043a\u043d\u043e\u043f\u043a\u043e\u044e REC."

    const-string v5, "Auto-record at launch (off by default in the released version), the size of one log file and \u201cKeep logs on the phone\u201d: logs older than the given number of days are deleted by themselves at launch (0 \u2014 do not delete). Manually \u2014 \u201cSend log to the developer\u201d \u2192 \u201cDelete old logs from the phone\u2026\u201d. Recording is switched with the REC button."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043a\u0438\u043d\u0443\u0442\u0438"

    const-string v5, "Reset"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0432\u0435\u0440\u0442\u0430\u0454 \u0432\u0441\u0456 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u0434\u043e \u0442\u0438\u043f\u043e\u0432\u0438\u0445 \u0437\u043d\u0430\u0447\u0435\u043d\u044c."

    const-string v5, "Returns all settings to default values."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u043d\u0435\u0457 \u043d\u0435\u043c\u0430\u0454 \u043d\u0456 GPS, \u043d\u0456 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u0437\u0430 \u043c\u0435\u0440\u0435\u0436\u0435\u044e. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0443\u0432\u0456\u043c\u043a\u043d\u0443\u0442\u0438."

    const-string v5, "Without it there is neither GPS nor network position. Tap to turn it on."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411"

    const-string v5, "B"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435\u043c\u0430\u0454 \u0434\u043e\u0437\u0432\u043e\u043b\u0443 \u043d\u0430 \u0433\u0435\u043e\u043b\u043e\u043a\u0430\u0446\u0456\u044e"

    const-string v5, "No location permission"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u043d\u044c\u043e\u0433\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u043d\u0435 \u0431\u0430\u0447\u0438\u0442\u044c, \u0434\u0435 \u0432\u0438. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0434\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 (\u0430\u0431\u043e \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f)."

    const-string v5, "Without it the app does not see where you are. Tap to allow (or open settings)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0437\u0432\u043e\u043b\u0435\u043d\u043e \u043b\u0438\u0448\u0435 \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u0435 \u043c\u0456\u0441\u0446\u0435"

    const-string v5, "Only approximate location is allowed"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u0435 \u00ab\u0422\u043e\u0447\u043d\u0435\u00bb \u043c\u0456\u0441\u0446\u0435\u0437\u043d\u0430\u0445\u043e\u0434\u0436\u0435\u043d\u043d\u044f, \u0456\u043d\u0430\u043a\u0448\u0435 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0445\u0438\u0431\u0443\u0454 \u043d\u0430 \u043a\u0456\u043b\u043e\u043c\u0435\u0442\u0440\u0438. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0432\u0438\u043f\u0440\u0430\u0432\u0438\u0442\u0438."

    const-string v5, "\u201cPrecise\u201d location is needed, otherwise the position is off by kilometers. Tap to fix."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e"

    const-string v5, "Notifications are off"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u0430 \u043c\u043e\u0436\u0435 \u0437\u0443\u043f\u0438\u043d\u0438\u0442\u0438 \u0432\u0435\u0434\u0435\u043d\u043d\u044f, \u043a\u043e\u043b\u0438 \u0435\u043a\u0440\u0430\u043d \u0437\u0433\u0430\u0441\u043d\u0435. \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0443\u0432\u0456\u043c\u043a\u043d\u0443\u0442\u0438."

    const-string v5, "Without notifications the system may stop guidance when the screen goes off. Tap to turn them on."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0426\u0456\u043d\u0438 \u0437 Google Play \u0449\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u044e\u0442\u044c\u0441\u044f (\u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0432\u0445\u0456\u0434 \u0443 Google Play)."

    const-string v5, "Google Play prices are still loading (internet and a Google Play sign-in are required)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u0438 Pro \u0447\u0435\u0440\u0435\u0437 Google Play:"

    const-string v5, "Extend Pro via Google Play:"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 Pro \u0447\u0435\u0440\u0435\u0437 Google Play:"

    const-string v5, "Get Pro via Google Play:"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f\u043c Google Play \u0441\u043f\u0438\u0441\u0443\u0454 \u043e\u043f\u043b\u0430\u0442\u0443 \u0449\u043e\u043c\u0456\u0441\u044f\u0446\u044f \u0447\u0438 \u0449\u043e\u0440\u043e\u043a\u0443, \u0434\u043e\u043a\u0438 \u0432\u0438 \u043d\u0435 \u0441\u043a\u0430\u0441\u0443\u0454\u0442\u0435 (\u0441\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u0434\u044c-\u043a\u043e\u043b\u0438, Pro \u0434\u0456\u0454 \u0434\u043e \u043a\u0456\u043d\u0446\u044f \u043e\u043f\u043b\u0430\u0447\u0435\u043d\u043e\u0433\u043e \u0441\u0442\u0440\u043e\u043a\u0443). \u0411\u0435\u0437 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f \u2014 \u0440\u0430\u0437\u043e\u0432\u0430 \u043e\u043f\u043b\u0430\u0442\u0430 \u0437\u0430 \u043c\u0456\u0441\u044f\u0446\u044c \u0447\u0438 \u0440\u0456\u043a, \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454\u0442\u0435 \u0441\u0430\u043c\u0456."

    const-string v5, "With auto-renewal Google Play charges monthly or yearly until you cancel (you can cancel any time, Pro works until the end of the paid term). Without auto-renewal \u2014 a one-time payment for a month or a year, you renew yourself."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u0456\u043a"

    const-string v5, "Year"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0456\u0441\u044f\u0446\u044c"

    const-string v5, "Month"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ", \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f"

    const-string v5, ", auto-renewal"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ", \u0431\u0435\u0437 \u0430\u0432\u0442\u043e\u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0435\u043d\u043d\u044f"

    const-string v5, ", no auto-renewal"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0435\u0440\u0443\u0432\u0430\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e \u0432 Google Play"

    const-string v5, "Manage subscription in Google Play"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "%.0f \u041c\u0411 (\u043f\u0456\u0441\u043b\u044f \u0440\u043e\u0437\u043f\u0430\u043a\u0443\u0432\u0430\u043d\u043d\u044f %.0f \u041c\u0411)"

    const-string v5, "%.0f MB (%.0f MB unpacked)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u043a\u0456\u043b\u044c\u043a\u0430 \u0441\u043e\u0442\u0435\u043d\u044c \u041c\u0411"

    const-string v5, "a few hundred MB"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u043e\u0447\u043d\u0456\u0448\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS"

    const-string v5, "More accurate guidance without GPS"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\n\n\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439 \u0443 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e."

    const-string v5, "\n\nThe road graph is available during the trial period and with a subscription."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u0437\u0430\u0440\u0430\u0437"

    const-string v5, "Download now"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0440\u043e\u0437\u0443\u043c\u0456\u043b\u043e"

    const-string v5, "Got it"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "%.1f \u041c\u0411"

    const-string v5, "%.1f MB"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0426\u0456 \u0444\u0430\u0439\u043b\u0438 \u0432\u0436\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e."

    const-string v5, "These files have already been sent."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435\u043c\u0430\u0454 \u0444\u0430\u0439\u043b\u0456\u0432 \u0434\u043b\u044f \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0437\u0430 \u0446\u0438\u043c \u0432\u0438\u0431\u043e\u0440\u043e\u043c."

    const-string v5, "There are no files to send for this choice."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0456\u0434\u0433\u043e\u0442\u0443\u0432\u0430\u0442\u0438 \u0444\u0430\u0439\u043b\u0438 \u0434\u043e \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    const-string v5, "Could not prepare the files for sending."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438"

    const-string v5, "What to send"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u043d\u0435\u043c\u0430\u0454 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0456\u0432. \u0423\u0432\u0456\u043c\u043a\u043d\u0456\u0442\u044c \u0437\u0430\u043f\u0438\u0441 \u043a\u043d\u043e\u043f\u043a\u043e\u044e REC."

    const-string v5, "There are no recorded logs on the phone. Turn on recording with the REC button."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439 \u043b\u043e\u0433"

    const-string v5, "Latest log"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0440\u0430\u043d\u0456"

    const-string v5, "Selected"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430 \u0441\u044c\u043e\u0433\u043e\u0434\u043d\u0456"

    const-string v5, "Today"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430 \u0432\u0447\u043e\u0440\u0430"

    const-string v5, "Yesterday"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430 \u0446\u0438\u043c \u0432\u0438\u0431\u043e\u0440\u043e\u043c \u0444\u0430\u0439\u043b\u0456\u0432 \u043d\u0435\u043c\u0430\u0454."

    const-string v5, "There are no files for this choice."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0424\u0430\u0439\u043b: "

    const-string v5, "File: "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u0449\u0435 \u0440\u0430\u0437"

    const-string v5, "Send again"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "  \u00b7  \u2713 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e"

    const-string v5, "  \u00b7  \u2713 sent"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440"

    const-string v5, "Comment"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e \u0432\u0456\u0434\u0431\u0443\u0432\u0430\u043b\u043e\u0441\u044f (\u0434\u0435, \u0449\u043e \u043d\u0435 \u0442\u0430\u043a)"

    const-string v5, "What was happening (where, what is wrong)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0432\u0430\u0442\u043d\u0456\u0441\u0442\u044c"

    const-string v5, "Privacy"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0434\u0430\u0442\u0438 \u0434\u0430\u043d\u0456 \u043f\u0440\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v5, "Add phone data"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u043e\u0434\u0435\u043b\u044c, \u0432\u0435\u0440\u0441\u0456\u044f Android, \u0434\u0430\u0442\u0447\u0438\u043a\u0438, \u043c\u043e\u0436\u043b\u0438\u0432\u043e\u0441\u0442\u0456 GNSS: \u0434\u043e\u043f\u043e\u043c\u0430\u0433\u0430\u0454 \u043f\u0456\u0434\u0456\u0431\u0440\u0430\u0442\u0438 \u043f\u043e\u0440\u043e\u0433\u0438 \u043f\u0456\u0434 \u0432\u0430\u0448 \u0442\u0435\u043b\u0435\u0444\u043e\u043d."

    const-string v5, "Model, Android version, sensors, GNSS capabilities: helps tune the thresholds to your phone."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0440\u0456\u0437\u0430\u0442\u0438 \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0456 \u043a\u0456\u043d\u0435\u0446\u044c \u043f\u043e\u0457\u0437\u0434\u043a\u0438"

    const-string v5, "Trim the start and end of the trip"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u044f\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 \u043f\u043e\u0431\u043b\u0438\u0437\u0443 \u0441\u0442\u0430\u0440\u0442\u0443 \u0439 \u0444\u0456\u043d\u0456\u0448\u0443 (\u0434\u0456\u043c, \u0440\u043e\u0431\u043e\u0442\u0430) \u0442\u0430 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438 \u0437 \u043d\u043e\u0442\u0430\u0442\u043e\u043a. \u0427\u0430\u0441 \u0437\u0430\u043f\u0438\u0441\u0443 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "Removes positions near the start and finish (home, work) and coordinates from notes. The recording time stays."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e \u0431\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e"

    const-string v5, "What will be sent"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u043e\u0442\u0443\u044e \u0444\u0430\u0439\u043b\u0438\u2026"

    const-string v5, "Preparing files\u2026"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e \u2713"

    const-string v5, "Sent \u2713"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u043e\u043c\u0435\u0440 (\u0437\u0430 \u043d\u0438\u043c \u043c\u043e\u0436\u043d\u0430 \u043f\u043e\u043f\u0440\u043e\u0441\u0438\u0442\u0438 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0434\u0430\u043d\u0456):"

    const-string v5, "Number (you can ask to delete the data by it):"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u043e\u0440\u043a\u043d\u0456\u0442\u044c\u0441\u044f \u043d\u043e\u043c\u0435\u0440\u0430, \u0449\u043e\u0431 \u0441\u043a\u043e\u043f\u0456\u044e\u0432\u0430\u0442\u0438"

    const-string v5, "Tap the number to copy"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u043c \u0444\u0430\u0439\u043b\u043e\u043c \u0447\u0435\u0440\u0435\u0437 \u0441\u0438\u0441\u0442\u0435\u043c\u0443"

    const-string v5, "Share the latest file through the system"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e: \u0444\u0430\u0439\u043b \u043f\u0456\u0434\u0435 \u0437 \u043f\u043e\u0432\u043d\u0438\u043c \u0442\u0440\u0435\u043a\u043e\u043c."

    const-string v5, "Trimming is off: the file will go with the full track."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0456 \u043b\u043e\u0433\u0438 \u0437 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430\u2026"

    const-string v5, "Delete old logs from the phone\u2026"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u0438\u0441\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u0437 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u043e\u043c"

    const-string v5, "Correspondence with the developer"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0456 \u043b\u043e\u0433\u0438"

    const-string v5, "Delete old logs"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u044f\u044e\u0442\u044c\u0441\u044f \u0444\u0430\u0439\u043b\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456. \u041f\u043e\u0442\u043e\u0447\u043d\u0438\u0439 \u0437\u0430\u043f\u0438\u0441 \u043d\u0435 \u0447\u0456\u043f\u0430\u0454\u0442\u044c\u0441\u044f. \u041d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0443 \u043b\u043e\u0433\u0438 \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f."

    const-string v5, "Trip and route files on this phone are deleted. The current recording is not touched. Logs sent to the developer stay on the server."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 30 \u0434\u043d\u0456\u0432"

    const-string v5, "Older than 30 days"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 7 \u0434\u043d\u0456\u0432"

    const-string v5, "Older than 7 days"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423\u0441\u0456, \u043a\u0440\u0456\u043c \u043f\u043e\u0442\u043e\u0447\u043d\u043e\u0433\u043e"

    const-string v5, "All except the current one"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043a\u0430\u0441\u0443\u0432\u0430\u0442\u0438"

    const-string v5, "Cancel"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u043b\u043e\u0433\u0456\u0432"

    const-string v5, "Sending logs"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041b\u043e\u0433\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u043c\u0456\u0441\u0442\u044f\u0442\u044c \u0432\u0430\u0448 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0456 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438, \u0442\u043e\u0431\u0442\u043e \u0446\u0435 \u043f\u0435\u0440\u0441\u043e\u043d\u0430\u043b\u044c\u043d\u0456 \u0434\u0430\u043d\u0456. \u0412\u0438 \u0431\u0430\u0447\u0438\u0442\u0435, \u0449\u043e \u0441\u0430\u043c\u0435 \u043f\u0456\u0434\u0435 (\u043a\u043d\u043e\u043f\u043a\u0430 \u00ab\u0429\u043e \u0431\u0443\u0434\u0435 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u043e\u00bb).\n\n\u0414\u0430\u043d\u0456 \u043e\u0442\u0440\u0438\u043c\u0443\u0454 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a BlindDriver \u043b\u0438\u0448\u0435 \u0449\u043e\u0431 \u043f\u043e\u043a\u0440\u0430\u0449\u0438\u0442\u0438 \u043d\u0430\u0432\u0456\u0433\u0430\u0446\u0456\u044e. \u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0456 \u0444\u0430\u0439\u043b\u0438 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f 90 \u0434\u043d\u0456\u0432, \u043f\u043e\u0442\u0456\u043c \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0456\u043b\u044c\u043a\u0438 \u0437\u0432\u0435\u0434\u0435\u043d\u0430 \u0456\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0456\u044f \u0431\u0435\u0437 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442 \u0456 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u044f. \u041e\u0431\u0440\u0456\u0437\u0430\u043d\u043d\u044f \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0439 \u043a\u0456\u043d\u0446\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0438 (\u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c 300 \u043c) \u043f\u0440\u0438\u0431\u0438\u0440\u0430\u0454 \u0437 \u043b\u043e\u0433\u0443 \u0434\u0456\u043c \u0456 \u0440\u043e\u0431\u043e\u0442\u0443; \u0447\u0430\u0441 \u0437\u0430\u043f\u0438\u0441\u0443 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f.\n\n\u0429\u043e\u0431 \u0432\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u043d\u0435, \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u0442\u0435 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 (Telegram @Blind_Driver_bot) \u0456 \u043d\u0430\u0437\u0432\u0456\u0442\u044c \u043d\u043e\u043c\u0435\u0440 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    const-string v5, "Trip logs contain your route and coordinates, so they are personal data. You see exactly what will be sent (the \u201cWhat will be sent\u201d button).\n\nThe data is received by the BlindDriver developer only to improve navigation. On the server the files are kept for 90 days, then only summary information without coordinates and comment remains. Trimming the start and end of the trip (300 m by default) removes home and work from the log; the recording time stays.\n\nTo delete what was sent, tell the developer (Telegram @Blind_Driver_bot) and name the sending number."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0433\u043e\u0434\u0436\u0443\u044e\u0441\u044c \u0456 \u043d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438"

    const-string v5, "I agree, send"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0456\u0434\u0433\u043e\u0442\u0443\u0432\u0430\u0442\u0438 \u0444\u0430\u0439\u043b"

    const-string v5, "Could not prepare the file"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0434\u0456\u0441\u043b\u0430\u0442\u0438 \u043b\u043e\u0433"

    const-string v5, "Send log"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u043e\u043c\u0435\u0440 \u0441\u043a\u043e\u043f\u0456\u0439\u043e\u0432\u0430\u043d\u043e"

    const-string v5, "Number copied"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0432\u0456\u0434\u043a\u0430: \u0437\u043d\u0430\u0447\u043a\u0438 \u0439 \u0444\u0443\u043d\u043a\u0446\u0456\u0457"

    const-string v5, "Help: icons and functions"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e \u043e\u0437\u043d\u0430\u0447\u0430\u0454 \u043a\u043e\u0436\u0435\u043d \u0437\u043d\u0430\u0447\u043e\u043a \u0456 \u044f\u043a \u043f\u0440\u0430\u0446\u044e\u0454 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS"

    const-string v5, "What every icon means and how guidance works without GPS"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0441\u0442\u0430\u043d\u043d\u0456\u0439, \u043e\u0431\u0440\u0430\u043d\u0456 \u0430\u0431\u043e \u0437\u0430 \u0434\u0435\u043d\u044c; \u0437 \u043a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u0435\u043c \u0456 \u0434\u0430\u043d\u0438\u043c\u0438 \u043f\u0440\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v5, "Latest, selected or by day; with a comment and phone data"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u043d\u0430\u043b\u0456\u0442\u0438\u043a\u0430 \u043f\u043e\u0457\u0437\u0434\u043e\u043a \u00b7 PRO"

    const-string v5, "Trip analytics \u00b7 PRO"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e\u0431\u0456\u0433, \u0447\u0430\u0441 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0439 \u043d\u0430 \u0441\u0442\u043e\u044f\u043d\u0446\u0456, \u043e\u0441\u043e\u0431\u0438\u0441\u0442\u0438\u0439 \u043a\u043e\u0435\u0444\u0456\u0446\u0456\u0454\u043d\u0442 \u0437\u0430\u0442\u043e\u0440\u0456\u0432"

    const-string v5, "Distance, travel and parking time, personal traffic coefficient"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0439 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v5, "Subscription and updates"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0430\u0440\u0438\u0444, \u043d\u043e\u0432\u0456 \u0432\u0435\u0440\u0441\u0456\u0457, \u0432\u043b\u0430\u0441\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 Mapbox"

    const-string v5, "Plan, new versions, your own Mapbox key"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v5, "Updates"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u043d\u0430\u0434\u0445\u043e\u0434\u044f\u0442\u044c \u0447\u0435\u0440\u0435\u0437 Google Play. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0430\u043c \u0437\u0430\u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454 \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0438 \u043d\u043e\u0432\u0443 \u0432\u0435\u0440\u0441\u0456\u044e, \u043a\u043e\u043b\u0438 \u0432\u043e\u043d\u0430 \u0437\'\u044f\u0432\u0438\u0442\u044c\u0441\u044f."

    const-string v5, "Updates come through Google Play. The app will offer to install a new version by itself when it appears."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u0433\u043e\u043b\u043e\u0441"

    const-string v5, "Guidance and voice"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430, \u043f\u043e\u0432\u0435\u0434\u0456\u043d\u043a\u0430 \u0431\u0435\u0437 GPS, \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043e\u043a, \u043a\u0430\u043c\u0435\u0440\u0438"

    const-string v5, "Rerouting, no-GPS behavior, prompt volume, cameras"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f"

    const-string v5, "Guidance"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u2014 \u0443 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u0417\u0430\u0440\u0430\u0437 \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    const-string v5, "New no-GPS guidance is available during the trial period and with a subscription. The previous guidance logic works now."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS (\u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433)"

    const-string v5, "New no-GPS guidance (by road graph)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 GPS \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0440\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438: \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043f\u0435\u0440\u0435\u0431\u0438\u0440\u0430\u0454 \u0441\u043e\u0442\u043d\u0456 \u043c\u043e\u0436\u043b\u0438\u0432\u0438\u0445 \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u044c \u043c\u0430\u0448\u0438\u043d\u0438 \u043d\u0430 \u0434\u043e\u0440\u043e\u0433\u0430\u0445 \u0456 \u0432\u0456\u0434\u043a\u0438\u0434\u0430\u0454 \u0442\u0456, \u0449\u043e \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f \u0437 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0430\u043c\u0438 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u0456 \u0437 \u043c\u0435\u0440\u0435\u0436\u0435\u044e. \u041d\u0430 \u043d\u0430\u0448\u0438\u0445 \u0442\u0435\u0441\u0442\u0430\u0445 \u043f\u043e\u0445\u0438\u0431\u043a\u0430 \u0431\u0435\u0437 GPS \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0432\u0434\u0432\u0456\u0447\u0456 \u043c\u0435\u043d\u0448\u0430, \u0445\u0438\u0431\u043d\u0438\u0445 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043c\u0435\u043d\u0448\u0435. \u041f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0438\u0439 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 (\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438). \u0411\u0435\u0437 \u0433\u0440\u0430\u0444\u0430 \u0430\u0431\u043e \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u2014 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u042f\u043a\u0449\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u0441\u0442\u0438\u0433\u0430\u0454 \u0440\u0430\u0445\u0443\u0432\u0430\u0442\u0438, \u0432\u0438\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0430."

    const-string v5, "Without GPS the position is computed on the road map of Ukraine: the phone tries hundreds of possible car positions on roads and discards those that do not match the turns by gyroscope and the network. In our tests the error without GPS is about half as large, and there are fewer false \u201cLooks like you left the route\u201d. A downloaded road graph is required (Map and offline \u2192 Offline routes). Without the graph or when off \u2014 the previous guidance logic. If the phone cannot keep up with the computation, it turns off by itself."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\n\n\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e: \u0437\u0430\u0440\u0430\u0437 \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430."

    const-string v5, "\n\nThe road graph is not downloaded: the previous logic works now."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\n\n\u0412\u0438\u043c\u043a\u043d\u0443\u043b\u043e\u0441\u044c \u0441\u0430\u043c\u043e: \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u0441\u0442\u0438\u0433\u0430\u0432 \u0440\u0430\u0445\u0443\u0432\u0430\u0442\u0438."

    const-string v5, "\n\nTurned off by itself: the phone could not keep up with the computation."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0440\u0438 \u043d\u0430\u0434\u0456\u0439\u043d\u043e\u043c\u0443 GPS"

    const-string v5, "Auto-reroute when GPS is reliable"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u0440\u0438 \u0436\u0438\u0432\u043e\u043c\u0443 GPS \u2014 \u043d\u043e\u0432\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u0434\u0440\u0430\u0437\u0443, \u043d\u0435 \u0447\u0430\u0441\u0442\u0456\u0448\u0435 \u043d\u0456\u0436 \u0440\u0430\u0437 \u043d\u0430 20 \u0441. \u041f\u0456\u0434 \u0433\u043b\u0443\u0448\u0438\u043b\u043a\u043e\u044e \u043d\u0435 \u0434\u0456\u0454."

    const-string v5, "Left the route with live GPS \u2014 a new route at once, no more than once per 20 s. Does not work under jamming."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 GPS"

    const-string v5, "Auto-reroute without GPS"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043b\u0430\u0448\u043a\u0430 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043f\u0456\u0441\u043b\u044f \u0432\u0456\u0434\u043b\u0456\u043a\u0443 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443\u0454 \u0441\u0430\u043c\u0430. \u0412\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u2014 \u043f\u043b\u0430\u0448\u043a\u0430 \u0447\u0435\u043a\u0430\u0454 \u0432\u0430\u0448\u043e\u0457 \u043a\u043d\u043e\u043f\u043a\u0438 \u00ab\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u0437\u0430\u0440\u0430\u0437\u00bb \u0445\u0432\u0438\u043b\u0438\u043d\u0443 \u0439 \u0437\u043d\u0438\u043a\u0430\u0454."

    const-string v5, "The \u201cLooks like you left the route\u201d tag reroutes by itself after the countdown. Off \u2014 the tag waits for your \u201cReroute now\u201d button for a minute and disappears."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043b\u0430\u043d\u043e\u0432\u0435 \u0441\u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0435\u043d\u043d\u044f \u0431\u0456\u043b\u044f \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432 \u0456 \u043b\u0435\u0436\u0430\u0447\u0438\u0445"

    const-string v5, "Planned slowing at traffic lights and bumps"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u0431\u0435\u0437 GPS \u0432\u0432\u0430\u0436\u0430\u0454, \u0449\u043e \u043f\u0435\u0440\u0435\u0434 \u043d\u0438\u043c\u0438 \u0432\u0438 \u0457\u0434\u0435\u0442\u0435 \u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0456\u0448\u0435."

    const-string v5, "Dead reckoning without GPS assumes that you drive slower before them."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0438 \u0434\u043e \u0434\u043e\u0440\u043e\u0433\u0438 \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Snap the arrow to a road without a route"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 GPS \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0441\u0442\u0430\u0432\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u0430\u0439\u0431\u043b\u0438\u0436\u0447\u0443 \u0434\u043e\u0440\u043e\u0433\u0443 \u0437\u0430 \u043a\u0443\u0440\u0441\u043e\u043c \u0440\u0443\u0445\u0443, \u0430 \u043d\u0435 \u00ab\u0432 \u043f\u043e\u043b\u0435\u00bb. \u0428\u0432\u0438\u0434\u0448\u0435 \u0437\u0430 50 \u043a\u043c/\u0433\u043e\u0434 \u2014 \u043b\u0438\u0448\u0435 \u043d\u0430 \u0432\u0435\u043b\u0438\u043a\u0456 \u0434\u043e\u0440\u043e\u0433\u0438 (\u043c\u0456\u0436 \u0431\u0443\u0434\u0438\u043d\u043a\u0430\u043c\u0438 \u0442\u0430\u043a \u043d\u0435 \u0457\u0437\u0434\u044f\u0442\u044c). \u041d\u0430\u0439\u0442\u043e\u0447\u043d\u0456\u0448\u0435 \u0437 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0430\u043c\u0438 (\u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433), \u0456\u043d\u0430\u043a\u0448\u0435 \u2014 \u0437\u0430 \u0434\u043e\u0440\u043e\u0433\u0430\u043c\u0438 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456."

    const-string v5, "Without GPS the arrow is placed on the nearest road by heading, not \u201cin a field\u201d. Faster than 50 km/h \u2014 only on major roads (people do not drive between houses). Most accurate with offline routes (road graph), otherwise \u2014 by roads on the map."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0434\u043e \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0430"

    const-string v5, "Snap a stop to a traffic light"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0443\u043f\u0438\u043d\u043a\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u043e\u0431\u043b\u0438\u0437\u0443 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0430 \u0443\u0442\u043e\u0447\u043d\u044e\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u044e \u043c\u0430\u0440\u043a\u0435\u0440\u0430."

    const-string v5, "A stop by sensors near a traffic light refines the marker position."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u044f\u0432\u043b\u044f\u0442\u0438 \u0441\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0431\u0435\u0437 GPS"

    const-string v5, "Detect leaving the route without GPS"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u043d\u0430\u0434\u0456\u0439\u043d\u043e\u0433\u043e GPS \u0441\u0445\u0456\u0434 \u043f\u043e\u043c\u0456\u0447\u0430\u044e\u0442\u044c \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f (\u0440\u043e\u0437\u0432\u043e\u0440\u043e\u0442 \u0430\u0431\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u043d\u0435 \u0437\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c), \u043c\u0435\u0440\u0435\u0436\u0430 (\u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u0430\u043b\u0435\u043a\u043e \u0432\u0456\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443) \u0456 \u0441\u0443\u043c\u043d\u0456\u0432\u043d\u0438\u0439 GPS: \u0437\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f \u043f\u043b\u0430\u0448\u043a\u0430 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb. \u0429\u043e \u0434\u0430\u043b\u0456 \u2014 \u0432\u0438\u0440\u0456\u0448\u0443\u0454 \u00ab\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 GPS\u00bb."

    const-string v5, "Without reliable GPS leaving is noticed by the gyroscope (a U-turn or a turn off the route), the network (position far from the route) and doubtful GPS: the \u201cLooks like you left the route\u201d tag appears. What happens next is decided by \u201cAuto-reroute without GPS\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u043c\u0438\u043d\u0430\u0442\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS, \u043f\u043e\u043a\u0438 \u043d\u0435 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f"

    const-string v5, "Do not pass a turn without GPS until the gyroscope confirms"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 GPS \u043c\u0430\u0440\u043a\u0435\u0440 \u0437\u0443\u043f\u0438\u043d\u044f\u0454\u0442\u044c\u0441\u044f \u043f\u0435\u0440\u0435\u0434 \u043a\u0440\u0443\u0442\u0438\u043c \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043f\u043e\u043a\u0438 \u0432\u0438 \u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0435\u0442\u0435 \u043a\u0435\u0440\u043c\u043e (\u0430\u0431\u043e \u043d\u0435 \u043c\u0438\u043d\u0435 \u0447\u0430\u0441 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f \u043d\u0438\u0436\u0447\u0435) \u2014 \u0440\u0430\u043d\u0456\u0448\u0435 \u043c\u0456\u0433 \u00ab\u043f\u0440\u043e\u0457\u0445\u0430\u0442\u0438\u00bb \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0437\u0430\u0437\u0434\u0430\u043b\u0435\u0433\u0456\u0434\u044c."

    const-string v5, "Without GPS the marker stops before a sharp turn of the route until you really turn the wheel (or the timeout below passes) \u2014 before, it could \u201cdrive through\u201d a turn in advance."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u00bb \u0431\u0435\u0437 GPS (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u043e)"

    const-string v5, "\u201cLooks like you missed the turn\u201d without GPS (experimental)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0430\u0440\u043a\u0435\u0440 \u0447\u0435\u043a\u0430\u0454 \u0431\u0456\u043b\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443, \u0430 \u043c\u0430\u0448\u0438\u043d\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0430 \u0432\u043a\u0430\u0437\u0430\u043d\u0443 \u043d\u0438\u0436\u0447\u0435 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c, \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0432\u0448\u0438 \u043a\u0435\u0440\u043c\u043e: \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443. \u0411\u0435\u0437 GPS \u043c\u0430\u0440\u043a\u0435\u0440 \u0447\u0430\u0441\u0442\u043e \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0434\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u0440\u0430\u043d\u0456\u0448\u0435 \u043c\u0430\u0448\u0438\u043d\u0438, \u0442\u043e\u043c\u0443 \u043c\u043e\u0436\u043b\u0438\u0432\u0456 \u0445\u0438\u0431\u043d\u0456 \u0441\u043f\u0440\u0430\u0446\u044e\u0432\u0430\u043d\u043d\u044f."

    const-string v5, "The marker waits near a turn, and the car, by sensors, has driven the distance below without turning the wheel: offers rerouting. Without GPS the marker often reaches a turn before the car, so false triggers are possible."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v5, "Alerts"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0438\u0445\u0456 \u0442\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v5, "Quiet alerts"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0435\u0437 \u043f\u043b\u0430\u0448\u043a\u0438, \u0433\u043e\u043b\u043e\u0441\u0443 \u0439 \u0441\u043f\u043e\u0432\u0456\u0449\u0435\u043d\u043d\u044f: \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u043b\u0438\u0448\u0435 \u0437\u043d\u0430\u0447\u043e\u043a \u00ab!\u00bb (\u043a\u043e\u043b\u0456\u0440 \u2014 \u0440\u0456\u0432\u0435\u043d\u044c, \u0434\u043e\u0442\u0438\u043a \u0440\u043e\u0437\u043a\u0440\u0438\u0432\u0430\u0454 \u043f\u043e\u0434\u0440\u043e\u0431\u0438\u0446\u0456)."

    const-string v5, "No tag, voice or notification: only a \u201c!\u201d icon on the screen (the color is the level, a tap reveals details)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u043c\u0435\u0440\u0438"

    const-string v5, "Cameras"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d"

    const-string v5, "Map and offline"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u043f\u0438\u0441\u0438 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456, \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043a\u0430\u0440\u0442\u0438, \u0430\u0434\u0440\u0435\u0441 \u0456 \u0433\u0440\u0430\u0444\u0430 \u0434\u043e\u0440\u0456\u0433"

    const-string v5, "Map labels, downloading the map, addresses and the road graph"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u0430"

    const-string v5, "Map"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438 \u0439 \u043b\u043e\u0433\u0438 (\u0434\u043b\u044f \u0434\u043e\u0441\u0432\u0456\u0434\u0447\u0435\u043d\u0438\u0445)"

    const-string v5, "Sensors and logs (for advanced users)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0440\u043e\u0433\u0438 \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438, \u0437\u0430\u043f\u0438\u0441 \u0456 \u043e\u0431\u0440\u0456\u0437\u043a\u0430 \u043b\u043e\u0433\u0456\u0432, \u0441\u043a\u0438\u0434\u0430\u043d\u043d\u044f \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u044c"

    const-string v5, "Stop detector thresholds, log recording and trimming, settings reset"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438 \u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v5, "Sensors and phone"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430\u0431\u0456\u0440 \u043f\u043e\u0440\u043e\u0433\u0456\u0432, \u0437\u0430 \u044f\u043a\u0438\u043c\u0438 \u0430\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440 \u0456 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u0432\u0438\u0437\u043d\u0430\u0447\u0430\u044e\u0442\u044c, \u0449\u043e \u043c\u0430\u0448\u0438\u043d\u0430 \u0441\u0442\u043e\u0457\u0442\u044c. \u0422\u0438\u043f\u043e\u0432\u0438\u0439 \u043d\u0430\u0431\u0456\u0440 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u043e \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0430\u0445."

    const-string v5, "A set of thresholds by which the accelerometer and gyroscope decide that the car is standing. The default set is verified on recorded logs."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u0439"

    const-string v5, "Automatic"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0435\u0440\u0435\u0436\u043d\u0438\u0439"

    const-string v5, "Careful"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0427\u0443\u0442\u043b\u0438\u0432\u0438\u0439"

    const-string v5, "Sensitive"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u0435\u0440\u0435\u0436\u043d\u0438\u0439 (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u0438\u0439): \u0437\u0443\u043f\u0438\u043d\u043a\u0443 \u043e\u0433\u043e\u043b\u043e\u0448\u0443\u0454 \u0440\u0456\u0434\u0448\u0435 \u0439 \u043f\u0456\u0437\u043d\u0456\u0448\u0435, \u043c\u0435\u043d\u0448\u0435 \u0445\u0438\u0431\u043d\u0438\u0445 \u0437\u0443\u043f\u0438\u043d\u043e\u043a. \u041d\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u0438\u0439 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0430\u0445."

    const-string v5, "Careful (experimental): announces a stop less often and later, fewer false stops. Not verified on recorded logs."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0427\u0443\u0442\u043b\u0438\u0432\u0438\u0439 (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u0438\u0439): \u0437\u0443\u043f\u0438\u043d\u043a\u0443 \u043e\u0433\u043e\u043b\u043e\u0448\u0443\u0454 \u0448\u0432\u0438\u0434\u0448\u0435, \u043b\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0456 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0432 \u0437\u0430\u0442\u043e\u0440\u0456, \u0430\u043b\u0435 \u0447\u0430\u0441\u0442\u0456\u0448\u0435 \u043f\u043e\u043c\u0438\u043b\u044f\u0454\u0442\u044c\u0441\u044f. \u041d\u0435 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u0438\u0439 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438\u0445 \u043b\u043e\u0433\u0430\u0445."

    const-string v5, "Sensitive (experimental): announces a stop faster, catches short stops in a jam, but errs more often. Not verified on recorded logs."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u043b\u0430\u0441\u043d\u0456 \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f: \u0432\u0438 \u0437\u043c\u0456\u043d\u0438\u043b\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0432\u0440\u0443\u0447\u043d\u0443."

    const-string v5, "Custom values: you changed the parameters manually."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u043e\u0437\u0448\u0438\u0440\u0435\u043d\u0456 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    const-string v5, "Advanced parameters"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423\u0441\u0456 \u043f\u043e\u0440\u043e\u0433\u0438 \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0442\u0430 \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u0434\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0456\u0432. \u0417\u043c\u0456\u043d\u044e\u0439\u0442\u0435, \u043b\u0438\u0448\u0435 \u044f\u043a\u0449\u043e \u0440\u043e\u0437\u0443\u043c\u0456\u0454\u0442\u0435 \u043d\u0430\u0441\u043b\u0456\u0434\u043a\u0438."

    const-string v5, "All thresholds of the stop detector and turn snapping. Change only if you understand the consequences."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0410\u0432\u0442\u043e\u0437\u0430\u043f\u0438\u0441 \u043b\u043e\u0433\u0443 \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443"

    const-string v5, "Auto-record the log at launch"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423 \u0437\u0431\u0456\u0440\u0446\u0456 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u0430\u0432\u0442\u043e\u0437\u0430\u043f\u0438\u0441 \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c \u0443\u0432\u0456\u043c\u043a\u043d\u0435\u043d\u0438\u0439."

    const-string v5, "In the developer build auto-recording is on by default."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423 \u0432\u0438\u043f\u0443\u0449\u0435\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u0437\u0430 \u0437\u0430\u043c\u043e\u0432\u0447\u0443\u0432\u0430\u043d\u043d\u044f\u043c: \u0443 \u043b\u043e\u0433\u0430\u0445 \u0442\u0440\u0435\u043a\u0438 \u0432\u0430\u0448\u0438\u0445 \u043f\u043e\u0457\u0437\u0434\u043e\u043a. \u0417\u0430\u043f\u0438\u0441 \u0432\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u043a\u043d\u043e\u043f\u043a\u043e\u044e REC, \u043a\u043e\u043b\u0438 \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0437\u0430\u043f\u0438\u0441\u0430\u0442\u0438 \u043b\u043e\u0433. \u0411\u0435\u0437 \u0437\u0430\u043f\u0438\u0441\u0443 \u043d\u0435 \u0437\u0431\u0438\u0440\u0430\u0454\u0442\u044c\u0441\u044f \u0442\u0440\u0435\u043a \u0434\u043b\u044f \u00ab\u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043a\u0443 \u044f\u043a \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u00bb."

    const-string v5, "In the released version it is off by default: logs contain the tracks of your trips. Recording is switched on with the REC button when you need to record a log. Without recording no track is collected for \u201cSave trip as route\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u0432\u0441\u0456 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u0434\u043e \u0442\u0438\u043f\u043e\u0432\u0438\u0445"

    const-string v5, "Reset all settings to default"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0440\u043e \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a"

    const-string v5, "About the app"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0435\u0440\u0441\u0456\u044f, ID \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438, \u0434\u0436\u0435\u0440\u0435\u043b\u0430 \u0434\u0430\u043d\u0438\u0445 \u0456 \u043b\u0456\u0446\u0435\u043d\u0437\u0456\u0457"

    const-string v5, "Version, installation ID, data sources and licenses"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f?"

    const-string v5, "Reset settings?"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423\u0441\u0456 \u043f\u043e\u0440\u043e\u0433\u0438 \u0439 \u043f\u0435\u0440\u0435\u043c\u0438\u043a\u0430\u0447\u0456 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u044c\u0441\u044f \u0434\u043e \u0442\u0438\u043f\u043e\u0432\u0438\u0445 \u0437\u043d\u0430\u0447\u0435\u043d\u044c. \u041a\u043b\u044e\u0447 Mapbox \u043d\u0435 \u0432\u0438\u0434\u0430\u043b\u044f\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "All thresholds and switches will return to default values. The Mapbox key is not deleted."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "%.0f \u041c\u0411"

    const-string v5, "%.0f MB"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f: \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e."

    const-string v5, "Paid feature: available during the trial period and with a subscription. Offline routes are off on the free plan."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0411\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438 (OpenStreetMap, \u0440\u0443\u0448\u0456\u0439 GraphHopper). \u0411\u0435\u0437 \u0437\u0430\u0442\u043e\u0440\u0456\u0432, \u0437\u043d\u0430\u043a\u0456\u0432 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0456 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432, \u043b\u0438\u0448\u0435 \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044c. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u044f\u043a \u0440\u0430\u043d\u0456\u0448\u0435 (Mapbox \u0430\u0431\u043e OSRM, \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438), \u0430 \u0433\u0440\u0430\u0444 \u043f\u0456\u0434\u0445\u043e\u043f\u043b\u044e\u0454, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u0441\u0435\u0440\u0432\u0456\u0441 \u043d\u0435 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0432. \u041f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0442\u0435\u0436 \u043f\u0440\u0430\u0446\u044e\u0454 \u043e\u0444\u043b\u0430\u0439\u043d. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0432\u0435\u043b\u0438\u043a\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi."

    const-string v5, "Builds routes without internet using the road graph of Ukraine (OpenStreetMap, GraphHopper engine). No traffic, speed-limit signs or traffic lights, car only. With internet routes are built as before (Mapbox or OSRM, with traffic), and the graph takes over when there is no internet or the online service did not answer. Rerouting during guidance works offline too. Downloading a large file: better over Wi-Fi."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438"

    const-string v5, "Delete"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043f\u0438\u0441\u043e\u043a \u043f\u0430\u043a\u0435\u0442\u0456\u0432 \u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439."

    const-string v5, "The package list is empty."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0430\u043a\u0435\u0442\u0456\u0432 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439."

    const-string v5, "No internet: the package list is unavailable."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0433\u0440\u0430\u0444\u0430"

    const-string v5, "Check for graph update"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u0434\u0430\u043b\u0438\u0442\u0438 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433?"

    const-string v5, "Delete the road graph?"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043d\u0443\u0442\u044c \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438, \u043f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0430\u0442\u044c \u0437\u043d\u043e\u0432\u0443."

    const-string v5, "Offline routes will stop working until the graph is downloaded again."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f: \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456 \u043e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e."

    const-string v5, "Paid feature: available during the trial period and with a subscription. Offline search is off on the free plan."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0448\u0443\u043a \u0432\u0443\u043b\u0438\u0446\u044c, \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432, \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u0438\u0445 \u043f\u0443\u043d\u043a\u0442\u0456\u0432 \u0456 \u043c\u0456\u0441\u0446\u044c \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0437\u0430 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u043e\u043c, \u0437\u0456\u0431\u0440\u0430\u043d\u0438\u043c \u0437 OpenStreetMap. \u041a\u0430\u0442\u0430\u043b\u043e\u0433\u0438 \u043f\u043e \u043e\u0431\u043b\u0430\u0441\u0442\u044f\u0445, \u043a\u043e\u0436\u0435\u043d \u0432\u0456\u0434 \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u043e \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u0435\u0441\u044f\u0442\u043a\u0456\u0432 \u041c\u0411: \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u043b\u0438\u0448\u0435 \u0442\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456, \u0434\u0435 \u0432\u0438 \u0431\u0443\u0432\u0430\u0454\u0442\u0435. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0439 \u0434\u0430\u043b\u0456 \u0434\u0430\u0454 \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a; \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u0456\u0434\u043a\u0430\u0437\u0443\u0454, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0437\u043d\u0430\u0439\u0448\u043e\u0432. \u0423 \u0441\u0456\u043b\u044c\u0441\u044c\u043a\u0456\u0439 \u043c\u0456\u0441\u0446\u0435\u0432\u043e\u0441\u0442\u0456 \u0430\u0434\u0440\u0435\u0441\u0438 \u0432 OpenStreetMap \u043f\u043e\u0432\u043d\u0456 \u0433\u0456\u0440\u0448\u0435, \u043d\u0456\u0436 \u0443 \u043c\u0456\u0441\u0442\u0430\u0445."

    const-string v5, "Search for streets, houses, towns and places without internet using a catalog built from OpenStreetMap. Catalogs by region, each from a few to a few dozen MB: download only the regions you visit. With internet online search keeps giving suggestions; the catalog helps when there is no internet or online search found nothing. In rural areas addresses in OpenStreetMap are less complete than in cities."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, " (\u0432\u0438 \u0442\u0443\u0442)"

    const-string v5, " (you are here)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ", \u0454 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v5, ", update available"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438"

    const-string v5, "Download"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438"

    const-string v5, "Update"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f\u2026 "

    const-string v5, "Downloading\u2026 "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043f\u0438\u0441\u043e\u043a \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432 \u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439."

    const-string v5, "The catalog list is empty."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u0441\u043f\u0438\u0441\u043e\u043a \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439."

    const-string v5, "No internet: the catalog list is unavailable."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u043d\u043e\u0432\u0438\u0442\u0438 \u0441\u043f\u0438\u0441\u043e\u043a \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432"

    const-string v5, "Refresh the catalog list"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0430\u0440\u0442\u0430 \u0431\u0435\u0440\u0435\u0442\u044c\u0441\u044f \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 (OpenFreeMap; \u043a\u043b\u044e\u0447 \u043d\u0435 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d, Mapbox \u0434\u043b\u044f \u043a\u0430\u0440\u0442\u0438 \u043d\u0435 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f). \u0429\u043e\u0431 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043a\u0430\u0440\u0442\u0430 \u043d\u0435 \u0437\u043d\u0438\u043a\u0430\u043b\u0430, \u0457\u0457 \u043c\u043e\u0436\u043d\u0430 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456. \u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u0456 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043e\u0434\u043d\u0430\u043a\u043e\u0432\u043e \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c; \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u0436\u0435 \u043f\u043e\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u0438\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u043f\u0440\u0430\u0446\u044e\u0454."

    const-string v5, "The map comes from the internet (OpenFreeMap; no key needed, Mapbox is not used for the map). So that the map does not disappear on the road without internet, it can be stored on the phone. Routes, address search and rerouting still do not work without internet; guidance along an already built route works."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0435\u0448\u0443\u0432\u0430\u0442\u0438 \u043a\u0430\u0440\u0442\u0443 \u0432\u0437\u0434\u043e\u0432\u0436 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v5, "Cache the map along the route"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0441\u043b\u044f \u0432\u0438\u0431\u043e\u0440\u0443 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u0456\u0434\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u043c\u0443\u0433\u0430 \u00b11,2 \u043a\u043c \u0443\u0437\u0434\u043e\u0432\u0436 \u043d\u044c\u043e\u0433\u043e (\u043e\u0440\u0456\u0454\u043d\u0442\u043e\u0432\u043d\u043e 5-15 \u041c\u0411 \u043d\u0430 10 \u043a\u043c). \u041f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442."

    const-string v5, "After you choose a route a \u00b11.2 km strip along it is preloaded (roughly 5-15 MB per 10 km). Internet is required."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u0435\u0448\u0443\u0432\u0430\u0442\u0438 \u043c\u043e\u044e \u043e\u0431\u043b\u0430\u0441\u0442\u044c"

    const-string v5, "Cache my area"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0422\u0440\u0438\u043c\u0430\u0454 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e\u044e \u043a\u0430\u0440\u0442\u0443 \u043d\u0430\u0432\u043a\u043e\u043b\u043e \u0432\u0430\u0448\u043e\u0433\u043e \u043c\u0456\u0441\u0446\u044f. \u041a\u043e\u043b\u0438 \u0432\u0438 \u0432\u0456\u0434\'\u0457\u0434\u0435\u0442\u0435 \u0434\u0430\u043b\u0435\u043a\u043e \u0432\u0456\u0434 \u0446\u0435\u043d\u0442\u0440\u0443 \u043e\u0431\u043b\u0430\u0441\u0442\u0456, \u0432\u043e\u043d\u0430 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u043e\u0432\u0435 \u043c\u0456\u0441\u0446\u0435."

    const-string v5, "Keeps the map around your location loaded. When you move far from the area center, it moves to the new place."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u0430\u0434\u0456\u0443\u0441 \u043e\u0431\u043b\u0430\u0441\u0442\u0456"

    const-string v5, "Area radius"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0431\u043b\u0430\u0441\u0442\u044c \u043b\u0438\u0448\u0435 \u0447\u0435\u0440\u0435\u0437 Wi-Fi"

    const-string v5, "Area only over Wi-Fi"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u043c\u043a\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0434\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0456 \u0447\u0435\u0440\u0435\u0437 \u043c\u043e\u0431\u0456\u043b\u044c\u043d\u0438\u0439 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442."

    const-string v5, "Turn off to allow downloading over mobile internet too."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ", \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e"

    const-string v5, ", downloaded"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0406\u0434\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f\u2026"

    const-string v5, "Downloading\u2026"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u0438 \u043a\u0435\u0448 \u043a\u0430\u0440\u0442\u0438"

    const-string v5, "Clear map cache"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u0438 \u043a\u0435\u0448 \u043a\u0430\u0440\u0442\u0438?"

    const-string v5, "Clear the map cache?"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u043a\u0430\u0447\u0430\u043d\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456 \u0439 \u043f\u0435\u0440\u0435\u0433\u043b\u044f\u043d\u0443\u0442\u0456 \u0434\u0456\u043b\u044f\u043d\u043a\u0438 \u043a\u0430\u0440\u0442\u0438 \u0431\u0443\u0434\u0435 \u0432\u0438\u0434\u0430\u043b\u0435\u043d\u043e. \u0411\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043a\u0430\u0440\u0442\u0430 \u0442\u0430\u043c \u043f\u0435\u0440\u0435\u0441\u0442\u0430\u043d\u0435 \u043c\u0430\u043b\u044e\u0432\u0430\u0442\u0438\u0441\u044f, \u043f\u043e\u043a\u0438 \u0457\u0457 \u0437\u043d\u043e\u0432\u0443 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0430\u0442\u044c."

    const-string v5, "Downloaded areas and viewed parts of the map will be deleted. Without internet the map there will stop being drawn until it is downloaded again."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u043e\u043b\u043e\u0441"

    const-string v5, "Voice"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0413\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043e\u043a"

    const-string v5, "Prompt volume"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434 \u0433\u0443\u0447\u043d\u043e\u0441\u0442\u0456 \u043c\u0435\u0434\u0456\u0430 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456."

    const-string v5, "Relative to the media volume on the phone."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0421\u0442\u0430\u0432\u0438\u0442\u0438 \u043c\u0443\u0437\u0438\u043a\u0443 \u043d\u0430 \u043f\u0430\u0443\u0437\u0443 \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438"

    const-string v5, "Pause music during a prompt"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u043c\u0456\u0441\u0442\u044c \u043f\u0440\u0438\u0442\u0438\u0448\u0435\u043d\u043d\u044f: \u043c\u0443\u0437\u0438\u043a\u0430 \u0437\u0430\u043c\u043e\u0432\u043a\u0430\u0454 \u043d\u0430 \u0447\u0430\u0441 \u0444\u0440\u0430\u0437\u0438 \u2014 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0443 \u0447\u0443\u0442\u0438 \u0437\u0430\u0432\u0436\u0434\u0438."

    const-string v5, "Instead of ducking: the music goes silent for the phrase \u2014 the prompt is always audible."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u0441\u0438\u043b\u0435\u043d\u043d\u044f \u043f\u0456\u0434 \u0447\u0430\u0441 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438"

    const-string v5, "Boost during a prompt"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0432\u0438\u043c\u043a."

    const-string v5, "off"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0430 \u0447\u0430\u0441 \u0444\u0440\u0430\u0437\u0438 \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043c\u0435\u0434\u0456\u0430 \u043f\u0456\u0434\u043d\u0456\u043c\u0430\u0454\u0442\u044c\u0441\u044f \u0449\u043e\u043d\u0430\u0439\u043c\u0435\u043d\u0448\u0435 \u0434\u043e \u0446\u044c\u043e\u0433\u043e \u0440\u0456\u0432\u043d\u044f, \u043f\u043e\u0442\u0456\u043c \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "For the phrase the media volume is raised to at least this level, then returns."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u25b6 \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c"

    const-string v5, "\u25b6 Test volume"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434\u0441\u0438\u043b\u0435\u043d\u043d\u044f \u0433\u043e\u043b\u043e\u0441\u0443"

    const-string v5, "Voice boost"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u043d\u043e\u0440\u043c\u0430\u043b\u044c\u043d\u043e"

    const-string v5, "normal"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0433\u0443\u0447\u043d\u043e"

    const-string v5, "loud"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0434\u0443\u0436\u0435 \u0433\u0443\u0447\u043d\u043e"

    const-string v5, "very loud"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0430\u043c \u0440\u043e\u0431\u0438\u0442\u044c \u0433\u043e\u043b\u043e\u0441 \u0433\u0443\u0447\u043d\u0456\u0448\u0438\u043c \u0437\u0430 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0438\u0439 (\u0432\u0456\u043d \u0442\u0438\u0445\u0438\u0439, \u0430 \u043c\u0443\u0437\u0438\u043a\u0430 \u0433\u0443\u0447\u043d\u0430). \u00ab\u0412\u0438\u043c\u043a.\u00bb \u2014 \u044f\u043a \u0432\u0456\u0434\u0434\u0430\u0454 \u0441\u0438\u043d\u0442\u0435\u0437\u0430\u0442\u043e\u0440. \u042f\u043a\u0449\u043e \u0447\u0443\u0442\u0438 \u0442\u0440\u0456\u0441\u043a \u2014 \u0437\u043d\u0438\u0437\u044c\u0442\u0435 \u0440\u0456\u0432\u0435\u043d\u044c."

    const-string v5, "The app makes the voice louder than the system one (it is quiet and music is loud). \u201cOff\u201d \u2014 as the synthesizer gives it. If you hear crackling, lower the level."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438\u0442\u0438 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0434\u0437\u0432\u0456\u043d\u043a\u0430"

    const-string v5, "Stay silent during a phone call"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0456\u0434 \u0447\u0430\u0441 \u0440\u043e\u0437\u043c\u043e\u0432\u0438 \u0430\u0431\u043e \u0432\u0445\u0456\u0434\u043d\u043e\u0433\u043e \u0432\u0438\u043a\u043b\u0438\u043a\u0443 \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u043c\u043e\u0432\u0447\u0430\u0442\u044c, \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u0432\u0441\u0435 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f."

    const-string v5, "During a call or an incoming call the prompts stay silent; everything stays on the screen."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u043b\u044f \u0456\u043d\u0448\u0438\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0456\u0432 (\u043f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f)"

    const-string v5, "Position for other apps (paid feature)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u0456\u043b\u0438\u0442\u0438\u0441\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0454\u044e \u0437 Waze \u0456 \u043a\u0430\u0440\u0442\u0430\u043c\u0438"

    const-string v5, "Share the position with Waze and maps"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043b\u0438 GPS \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u0439\u043e\u0433\u043e \u0437\u0430\u0433\u043b\u0443\u0448\u0435\u043d\u043e, \u0456\u043d\u0448\u0456 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0438 \u043e\u0442\u0440\u0438\u043c\u0443\u044e\u0442\u044c \u043f\u043e\u0437\u0438\u0446\u0456\u044e BlindDriver (\u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a + \u043c\u0435\u0440\u0435\u0436\u0430) \u0437\u0430\u043c\u0456\u0441\u0442\u044c \u00ab\u043d\u0435\u043c\u0430\u0454 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432\u00bb. \u041a\u043e\u043b\u0438 GPS \u0443 \u043d\u043e\u0440\u043c\u0456 \u2014 \u0431\u0430\u0447\u0430\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS. \u041f\u0440\u0430\u0446\u044e\u0454, \u043f\u043e\u043a\u0438 BlindDriver \u0432\u0456\u0434\u043a\u0440\u0438\u0442\u0438\u0439 \u0430\u0431\u043e \u0432\u0435\u0434\u0435."

    const-string v5, "When GPS is absent or jammed, other apps receive the BlindDriver position (dead reckoning + network) instead of \u201cno satellites\u201d. When GPS is fine they see real GPS. Works while BlindDriver is open or guiding."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u0432\u0438\u0431\u0440\u0430\u0442\u0438 BlindDriver: \u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u2192 \u00ab\u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0434\u043b\u044f \u0444\u0456\u043a\u0442\u0438\u0432\u043d\u0438\u0445 \u043c\u0456\u0441\u0446\u0435\u0437\u043d\u0430\u0445\u043e\u0434\u0436\u0435\u043d\u044c\u00bb."

    const-string v5, "You need to select BlindDriver: Developer options \u2192 \u201cSelect mock location app\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u0443 \u043d\u043e\u0440\u043c\u0456 \u2014 \u0456\u043d\u0448\u0456 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0438 \u0431\u0430\u0447\u0430\u0442\u044c \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS."

    const-string v5, "GPS is fine \u2014 other apps see real GPS."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GPS \u043d\u0435\u043c\u0430\u0454, \u0430\u043b\u0435 \u0432\u043b\u0430\u0441\u043d\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0449\u0435 \u043d\u0435\u0442\u043e\u0447\u043d\u0430 \u0430\u0431\u043e \u0449\u043e\u0439\u043d\u043e \u0437\u043d\u0438\u043a GPS \u2014 \u043f\u043e\u043a\u0438 \u043d\u0435 \u043f\u0435\u0440\u0435\u0434\u0430\u044e."

    const-string v5, "There is no GPS, but our own position is still inaccurate or GPS just disappeared \u2014 not sharing yet."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430 \u043f\u0456\u0434\u043c\u0456\u043d\u0438 (\u0434\u0438\u0432. \u043b\u043e\u0433, \u00abshare error\u00bb)."

    const-string v5, "Spoofing error (see the log, \u201cshare error\u201d)."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c\u0441\u044f, \u0449\u043e\u0439\u043d\u043e \u043f\u0440\u0430\u0446\u044e\u0432\u0430\u0442\u0438\u043c\u0435 \u0432\u0438\u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043f\u043e\u0437\u0438\u0446\u0456\u0457."

    const-string v5, "Will start as soon as position determination works."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434\u043a\u0440\u0438\u0442\u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430"

    const-string v5, "Open developer options"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0429\u043e\u0431 \u0432\u0456\u043a\u043d\u043e \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u0437\'\u044f\u0432\u043b\u044f\u043b\u043e\u0441\u044f \u043f\u043e\u0432\u0435\u0440\u0445 Waze, \u0434\u043e\u0437\u0432\u043e\u043b\u044c\u0442\u0435 \u00ab\u041f\u043e\u043a\u0430\u0437 \u043f\u043e\u0432\u0435\u0440\u0445 \u0456\u043d\u0448\u0438\u0445 \u0432\u0456\u043a\u043e\u043d\u00bb."

    const-string v5, "For the route window to appear over Waze, allow \u201cDisplay over other apps\u201d."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0414\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 \u043f\u043e\u043a\u0430\u0437 \u043f\u043e\u0432\u0435\u0440\u0445 \u0432\u0456\u043a\u043e\u043d"

    const-string v5, "Allow display over other windows"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043e\u043b\u0438 BlindDriver \u0437\u0433\u043e\u0440\u043d\u0443\u0442\u043e, \u043f\u043e\u0432\u0435\u0440\u0445 \u0456\u043d\u0448\u0438\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0456\u0432 \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0432\u0456\u043a\u043d\u043e: \u043c\u0430\u0440\u0448\u0440\u0443\u0442, \u2193100 / \u2191100 \u0456 \u21bb \u00ab\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438\u00bb. \u041f\u0456\u0434\u043c\u0456\u043d\u0443 \u0437\u043d\u0456\u043c\u0430\u0454\u043c\u043e \u043d\u0430 \u043a\u0456\u043b\u044c\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434 \u043b\u0438\u0448\u0435 \u0442\u043e\u0434\u0456, \u043a\u043e\u043b\u0438 \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0438, \u0441\u0445\u043e\u0436\u0435, \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u043b\u0438\u0441\u044f, \u2014 \u0449\u043e\u0431 \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u0438\u0442\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 GPS."

    const-string v5, "When BlindDriver is minimized, a window is shown over other apps: the route, \u2193100 / \u2191100 and \u21bb \u201creroute\u201d. Spoofing is lifted for a few seconds only when satellites seem to be back \u2014 to check real GPS."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043b\u044e\u0447 Mapbox (\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438)"

    const-string v5, "Mapbox key (routes with traffic)"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u043a\u043b\u044e\u0447 \u0440\u043e\u0437\u0440\u043e\u0431\u043d\u0438\u043a\u0430 \u0437\u0456 \u0437\u0431\u0456\u0440\u043a\u0438. \u0412\u0430\u0448 \u0432\u043b\u0430\u0441\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 \u043c\u0430\u0442\u0438\u043c\u0435 \u043f\u0440\u0456\u043e\u0440\u0438\u0442\u0435\u0442."

    const-string v5, "The developer key from the build is used. Your own key will take priority."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041a\u043b\u044e\u0447\u0430 \u043d\u0435\u043c\u0430\u0454: \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u0447\u0435\u0440\u0435\u0437 \u043f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 OSRM \u0431\u0435\u0437 \u0437\u0430\u0442\u043e\u0440\u0456\u0432."

    const-string v5, "No key: routes are built through public OSRM without traffic."

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041f\u0443\u0431\u043b\u0456\u0447\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 pk.\u2026"

    const-string v5, "Public key pk.\u2026"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u043f\u0440\u0438\u0445\u043e\u0432\u0430\u0442\u0438"

    const-string v5, "hide"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0438"

    const-string v5, "show"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcd/g;->a(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->b(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->c(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->d(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->e(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->f(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->g(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->h(Ljava/util/HashMap;)V

    invoke-static {p0}, Lcd/g;->i(Ljava/util/HashMap;)V

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u043e\u0431\u0441\u0442\u0440\u0456\u043b\u0443"

    const-string v5, "Shelling threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0430\u0432\u0456\u0430\u0431\u043e\u043c\u0431"

    const-string v5, "Guided aerial bomb threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u041a\u0410\u0411"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u0432\u0430\u043d\u043d\u044f \u0430\u0432\u0456\u0430\u0446\u0456\u0457"

    const-string v5, "Aircraft threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0437 \u043f\u043e\u0432\u0456\u0442\u0440\u044f"

    const-string v5, "Air threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0432\u0438\u0431\u0443\u0445\u0456\u0432"

    const-string v5, "Explosion threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0430\u0442\u0430\u043a\u0438"

    const-string v5, "Attack threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u041c\u0430\u0441\u043e\u0432\u0430\u043d\u0430 \u0430\u0442\u0430\u043a\u0430"

    const-string v5, "Massive attack"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0417\u0430\u0433\u0440\u043e\u0437\u0430 \u0445\u0456\u043c\u0456\u0447\u043d\u043e\u0457 \u0430\u0442\u0430\u043a\u0438"

    const-string v5, "Chemical attack threat"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0420\u0430\u0434\u0456\u0430\u0446\u0456\u0439\u043d\u0430 \u043d\u0435\u0431\u0435\u0437\u043f\u0435\u043a\u0430"

    const-string v5, "Radiation hazard"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0425\u0456\u043c\u0456\u0447\u043d\u0430 \u043d\u0435\u0431\u0435\u0437\u043f\u0435\u043a\u0430"

    const-string v5, "Chemical hazard"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0412\u0456\u0434\u0431\u0456\u0439 \u043f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u043e\u0457 \u0442\u0440\u0438\u0432\u043e\u0433\u0438"

    const-string v5, "Air raid alert is over"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "\u0423\u0432\u0430\u0433\u0430! \u0423 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456: "

    const-string v5, "Attention! In your area: "

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "{0} \u0445\u0432 \u0442\u043e\u043c\u0443"

    const-string v5, "{0} min ago"

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0420\u0456\u0432\u0435\u043d\u044c"

    const-string v1, "Level"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0432\u0430\u0442\u0438 \u043a\u0440\u0430\u0449\u0435 \u0447\u0435\u0440\u0435\u0437 Wi-Fi.\n\n\u041f\u043e\u043a\u0438 \u0433\u0440\u0430\u0444 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e, \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u0434\u044c-\u043a\u043e\u043b\u0438: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438."

    const-string v1, "Better to download over Wi-Fi.\n\nUntil the graph is downloaded, the previous guidance logic works. You can download it any time: Settings \u2192 Map and offline \u2192 Offline routes."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcd/g;->j(Ljava/util/HashMap;)V

    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0443\u0432\u0448\u0438 \u043a\u043d\u043e\u043f\u043a\u0443 \u043d\u0438\u0436\u0447\u0435, \u0432\u0438 \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u0454\u0442\u0435 \u043d\u0430 \u043d\u0430\u0448 \u0441\u0435\u0440\u0432\u0435\u0440 \u043c\u043e\u0434\u0435\u043b\u044c \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430 \u0439 \u043d\u0435\u0437\u0432\u043e\u0440\u043e\u0442\u043d\u0438\u0439 \u0432\u0456\u0434\u0431\u0438\u0442\u043e\u043a \u0439\u043e\u0433\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e ID (\u0445\u0435\u0448 identifierForVendor) \u2014 \u043b\u0438\u0448\u0435 \u0449\u043e\u0431 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u043c\u043e\u0436\u043d\u0430 \u0431\u0443\u043b\u043e \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0442\u0438 \u043f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443."

    const-string v1, "By tapping the button below you send our server the phone model and an irreversible fingerprint of its system ID (identifierForVendor hash) \u2014 only so that the subscription can be restored after reinstalling the app."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0423 Waze \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u043e\u044e\u00bb \u2192 \u00ab\u0421\u043a\u043e\u043f\u0456\u044e\u0432\u0430\u0442\u0438\u00bb, \u043f\u043e\u0442\u0456\u043c \u0432\u0441\u0442\u0430\u0432\u0442\u0435 \u043f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u0432 \u0440\u044f\u0434\u043e\u043a \u00ab\u041a\u0443\u0434\u0438\u00bb BlindDriver. \u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0456\u0437\u044c\u043c\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 Waze \u0456 \u043f\u0440\u0438\u0432\'\u044f\u0436\u0435 \u0439\u043e\u0433\u043e \u0434\u043e \u0434\u043e\u0440\u0456\u0433; \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0437\u0430\u043f\u0443\u0441\u043a\u0430\u0454\u0442\u0435 \u043a\u043d\u043e\u043f\u043a\u043e\u044e \u00ab\u0420\u043e\u0437\u043f\u043e\u0447\u0430\u0442\u0438\u00bb. \u041f\u0440\u0430\u0446\u044e\u0454, \u043f\u043e\u043a\u0438 \u0442\u0440\u0438\u0432\u0430\u0454 \u043f\u043e\u0457\u0437\u0434\u043a\u0430 \u0432 Waze, \u0456 \u043b\u0438\u0448\u0435 \u0437 \u043a\u043b\u044e\u0447\u0435\u043c Mapbox. \u0426\u0435 \u043d\u0435\u043e\u0444\u0456\u0446\u0456\u0439\u043d\u0438\u0439 \u0456\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441 Waze: \u0432\u0456\u043d \u043c\u043e\u0436\u0435 \u0437\u043c\u0456\u043d\u0438\u0442\u0438\u0441\u044f."

    const-string v1, "In Waze during guidance tap \u201cShare drive\u201d \u2192 \u201cCopy\u201d, then paste the link into the \u201cWhere to\u201d field of BlindDriver. The app takes the Waze route and snaps it to the roads; you start guidance with the \u201cStart\u201d button. It works while the drive in Waze lasts, and only with a Mapbox key. This is an unofficial Waze interface: it may change."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0417\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0441\u0430\u043c \u043f\u0435\u0440\u0435\u0432\u0456\u0440\u044f\u0454 \u043d\u0430\u044f\u0432\u043d\u0456\u0441\u0442\u044c \u043d\u043e\u0432\u043e\u0457 \u0432\u0435\u0440\u0441\u0456\u0457 \u0439 \u043d\u0430\u0433\u0430\u0434\u0443\u0454 \u043f\u0440\u043e \u043d\u0435\u0457 \u0440\u0430\u0437 \u043d\u0430 \u0434\u0435\u043d\u044c. \u041d\u0430 iPhone \u043d\u043e\u0432\u0443 \u0432\u0435\u0440\u0441\u0456\u044e \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u044e\u044e\u0442\u044c \u0442\u0430\u043a \u0441\u0430\u043c\u043e, \u044f\u043a \u043f\u0435\u0440\u0448\u0443: \u0444\u0430\u0439\u043b .ipa \u0447\u0435\u0440\u0435\u0437 Sideloadly \u043d\u0430 \u043a\u043e\u043c\u043f\'\u044e\u0442\u0435\u0440\u0456 (\u0434\u0430\u043d\u0456 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f). \u0421\u0442\u0430\u0440\u0430 \u0432\u0435\u0440\u0441\u0456\u044f \u043f\u0440\u0430\u0446\u044e\u0454 \u0431\u0435\u0437 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u044c."

    const-string v1, "The app checks for a new version by itself and reminds you once a day. On iPhone a new version is installed the same way as the first one: the .ipa file through Sideloadly on a computer (your data is kept). The old version keeps working without limits."

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, La1/b;->l:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lia/w;->b:Lfa/e;

    return-object p0

    :pswitch_0
    sget-object p0, Lia/e0;->b:Lfa/e;

    return-object p0

    :pswitch_1
    sget-object p0, Li4/a;->a:Lr0/a0;

    return-object v4

    :pswitch_2
    sget-object p0, Li0/g;->a:Lr0/a0;

    return-object v4

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v2, Lfa/g;->i:Lfa/g;

    new-array p0, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v1, "kotlin.Unit"

    invoke-static {v1}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lfa/g;->f:Lfa/g;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v5, Lfa/a;

    invoke-direct {v5, v1}, Lfa/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lfa/e;

    iget-object v3, v5, Lfa/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p0}, Lu8/l;->H0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lfa/e;-><init>(Ljava/lang/String;La/a;ILjava/util/List;Lfa/a;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Blank serial names are prohibited"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    sget-object p0, Lua/nav/net/PricesDto;->Companion:Lua/nav/net/PricesDto$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/net/PriceTierDto$$serializer;->INSTANCE:Lua/nav/net/PriceTierDto$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lua/nav/net/PriceTierDto;->Companion:Lua/nav/net/PriceTierDto$Companion;

    new-instance p0, Lha/e0;

    sget-object v0, Lha/a1;->a:Lha/a1;

    sget-object v0, Lha/c0;->a:Lha/c0;

    invoke-direct {p0, v0}, Lha/e0;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lua/nav/net/EntitlementDto;->Companion:Lua/nav/net/EntitlementDto$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lua/nav/net/AppMsgsDto;->Companion:Lua/nav/net/AppMsgsDto$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/net/AppMsgDto$$serializer;->INSTANCE:Lua/nav/net/AppMsgDto$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lgd/d;->Companion:Lgd/a;

    sget-object p0, Lu8/s;->l:Lu8/s;

    return-object p0

    :pswitch_a
    sget-object p0, Lm9/d;->l:Lm9/a;

    sget-object p0, Lm9/d;->l:Lm9/a;

    invoke-virtual {p0}, Lm9/a;->a()Ljava/util/Random;

    move-result-object p0

    const/high16 v0, 0x7fff0000

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Le4/a;->a:Lr0/a0;

    return-object v4

    :pswitch_c
    sget-object p0, Le1/h;->a:Lr0/s2;

    return-object v4

    :pswitch_d
    sget-object p0, Le1/f;->a:Lr0/s2;

    return-object v4

    :pswitch_e
    invoke-direct {p0}, La1/b;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lcd/g;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "^"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v3

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_2

    const/16 v6, 0x7d

    const/4 v7, 0x4

    invoke-static {v2, v6, v5, v7}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    :goto_2
    if-le v6, v5, :cond_5

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "substring(...)"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move v8, v3

    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const-string v5, "([\\s\\S]*?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "literal"

    invoke-static {v6, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "quote(...)"

    invoke-static {v6, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-string v2, "$"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcd/e;

    new-instance v5, Lr9/i;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "toString(...)"

    invoke-static {v4, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4}, Lr9/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v1}, Lcd/e;-><init>(Lr9/i;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0

    :pswitch_10
    sget-object p0, Lc1/h;->a:Lr0/s2;

    return-object v4

    :pswitch_11
    new-instance p0, Lc1/d;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lc1/d;-><init>(Ljava/util/Map;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lc/h;->a:Lr0/a0;

    return-object v4

    :pswitch_13
    sget-object p0, Lc/g;->a:Lr0/a0;

    return-object v4

    :pswitch_14
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CompositionLocal LocalLifecycleOwner not present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_17
    new-instance p0, Lb3/j;

    invoke-direct {p0, v1, v2}, Lb3/j;-><init>(J)V

    return-object p0

    :pswitch_18
    new-instance p0, Lb3/j;

    invoke-direct {p0, v1, v2}, Lb3/j;-><init>(J)V

    return-object p0

    :pswitch_19
    sget-object p0, Lb0/b0;->a:Lr0/s2;

    return-object v4

    :pswitch_1a
    new-instance p0, Lm1/j0;

    const v0, 0x4dffeb3b    # 5.3670077E8f

    invoke-static {v0}, Lm1/v;->c(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lm1/j0;-><init>(J)V

    return-object p0

    :pswitch_1b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1c
    sget-object p0, La1/c;->a:Lr0/s2;

    sget-object p0, La1/a;->l:La1/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
